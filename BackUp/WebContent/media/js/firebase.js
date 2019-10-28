// var url = "";
$(".signSucces").hide();

var userData;
var id_app= null;
var id_em= null;

// check for Navigation Timing API support
if (window.performance) {
  // console.info("window.performance works fine on this browser");
}

if (performance.navigation.type == 1) {
// console.info( "This page is reloaded" );
 
$(".overlay-div").css("display", "flex");
} else {
// console.info( "This page is not reloaded");
}

$('#loginGoogle').click(function(){
    login("google");
})
$('#loginfacebook').click(function(){
    login("facebook");
})

// Initialize Firebase
var config = {
    apiKey: "AIzaSyA3tzoP6rkUE-N2sDF5n0DzV0nq-Ox-S-w",
    authDomain: "cithue.firebaseapp.com",
    databaseURL: "https://cithue.firebaseio.com",
    projectId: "cithue",
    storageBucket: "cithue.appspot.com",
    messagingSenderId: "628388690991"
  };
  firebase.initializeApp(config);
// =========================************=========================


function login(provider){
    // #TODO: Check email address exists
    // if exist 
    // Alert: Can't sign

    $("#modalLogin").modal("hide");
    $(".overlay-div").css("display", "flex");

    if(provider == 'google'){
        var provider = new firebase.auth.GoogleAuthProvider();
    } else if (provider == 'facebook') {
        var provider = new firebase.auth.FacebookAuthProvider();
    }

    //If login is Exist same email ---> login by Google
    firebase.auth().signInWithPopup(provider).catch(function(error) {
          // An error happened.
          if (error.code === 'auth/account-exists-with-different-credential') {
            // User's email already exists.
            // The pending Google credential.
            var pendingCred = error.credential;
            // The provider account's email address.
            var email = error.email;

            // var googleProvider = new firebase.auth.GoogleAuthProvider();
            firebase.auth().fetchSignInMethodsForEmail(email).then(function(methods) {
                var provider = new firebase.auth.GoogleAuthProvider();
                provider.setCustomParameters({
                  'login_hint': email
                });
            });

        }
    });

}
// Check logined
$.ajax({ 
    type: "POST",
    url: "/user/isLogged.php",
    cache: false,
    success: function(result) {
        //TRUE not logined- not session
        // console.result;
        if (result.error) {
                firebase.auth().onAuthStateChanged(function(user){
                // console.log(user);
                $(".overlay-div").css("display", "none");
                if(user){
                    if (user.providerData[0]['displayName']) {
                        var fullname = user.providerData[0]['displayName'];
                    }
                    else var fullname="";
                    if (user.providerData[0]['email']) {
                        var email = user.providerData[0]['email'];
                    }
                    else var email ="";
                    if (user.providerData[0]['uid']) {
                        var id = user.providerData[0]['uid'];
                    }
                    if (user.providerData[0]['photoURL']) {
                        var link = user.providerData[0]['photoURL'];
                    } 
                    else var link="";
                    if(user.providerData[0]['providerId'])
                    {
                        var oauth_provider=user.providerData[0]['providerId'];
                    }
                    else var oauth_provider="email";

                    userData = {'id'  : id,'fullname': fullname,'email': email,'link': link,'oauth': oauth_provider }
                    localStorage.setItem('userData', JSON.stringify(userData));
                    // localStorage.setItem("userData", userData);
                    //Save and update data if user exist
                    $.post('user/userData.php',
                        {
                            userData:JSON.stringify(userData)
                        },
                        function (data){ 
                            // console.log(data);
                            Template(userData);
                        });
                } 
                else {
                    // console.log('not click login');
                    $(".signSucces").show();    
                }
            });
        } 
        //FALSE---has been logged
        else {

            $("#modalLogin").modal("hide");
            // console.log('FALSE has been logged');
            var userData = JSON.parse(localStorage.getItem('userData'));
            // console.log(userData);
            Template(userData);
            
        }
    }
});

function Template(data){
    // Get data user from database- id
    // console.log(data);
    $.ajax({
    type: "POST",
    url: "/user/getId.php",
    data: {email: data.email},
    cache: false,
    success: function(result) {
        // var id = ;
        // console.log(result);
        var object = JSON.parse(result);
        id = object[0].uid;
        id_app = object[0].id_app;
        id_em = object[0].id_em;
        if(object[0].apicture != null)
        {
            picture = 'upload/uploadUser/thumb/'+object[0].apicture ;
        }
        else{
            picture=data.link;
        }

        // HTML
        $(".signSucces").hide();
        $('.thumbnail').show();
        $(".overlay-div").css("display", "none");
        var profileHTML=' <li class="nav-item dropdown dropdown-login">';
            profileHTML+='<a class="nav-link dropdown-toggle btn-login" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">';
                profileHTML+='<img class="img-user" src="'+picture+'"/>';
            profileHTML+='</a>';
            profileHTML+='<div class="dropdown-menu" aria-labelledby="navbarDropdown">';
                profileHTML+='<a  href="tai-khoan?user_id='+id+'" class="dropdown-item" id="">'+data.fullname+'</a>';
                profileHTML+='<div class="dropdown-divider"></div>';
                profileHTML+='<a href="" id="btnLogout" class="dropdown-item">Đăng xuất</a>'
            profileHTML+='</div>';
        profileHTML+='</li>';
        
        $('.thumbnail').html(profileHTML);
        if((id_app == null && id_em == null) || (id_app!=null && id_em !=null) )
            {
                $("#modalUserInfo").modal('show'); 
            }
        }
    });


}


//Logout
$(document).on("click","#btnLogout",function(){
    firebase.auth().signOut().then(function(){
        localStorage.removeItem("userData");
        // localStorage.removeItem("login");
        window.location.href = "/user/logOut.php/";
    }).catch(function(error){
        window.location.href = "index.php";
    });

    $('.thumbnail').hide();
    $('.signSucces').show();
});

