$(function(){

  var env = {
    categorySelectors:$(".categories"),
    mainContent: $("#browse-profiles"),
    categoryTitle:$(".category-title"),
    modal: $("#myModal"),
    usersTemplate: Handlebars.compile( $("#users-template").html() )
  }

/********************
Event Listeners
*********************/


env.categorySelectors.on("click", ".category-link",function(event){
  event.preventDefault();

  let categoryName = $(event.target).attr("data-role-name");
  console.log(categoryName);

  // get users information from server

  $.getJSON("https://ga-connected.herokuapp.com/users.json", function(users){

    let fileredUsers = _.where(users, {
      role: categoryName
    });

  //   // MAKE USERS TEMPLATE
    var selectedCategory = env.usersTemplate({ users: fileredUsers});
    env.mainContent.html(selectedCategory);
  });
});


env.mainContent.on("click", ".modal-trigger",function(event){
  // event.preventDefault();

  let buttonId = $(event.target).attr("data-modal-id");
  console.log(buttonId);

  // get users information from server
  $.getJSON("https://ga-connected.herokuapp.com/users.json", function(users){
    console.log(users)
    let user = _.findWhere(users, {id: Number(buttonId) });
    console.log(user);

    env.modal.find("#myModalLabel").text(user.first_name + " " + user.last_name);
    env.modal.find("#about-pic").attr("src", user.photo);
    env.modal.find("#skills").text( JSON.parse(user.skills).join(", ") );
    // let newModal = env.modalTemplate({ user: user });

    // env.modalDisplay.html(newModal);

  });
});

});
