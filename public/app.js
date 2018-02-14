$(function(){

  var env = {
    categorySelectors:$(".categories"),
    mainContect: $("#mainContect"),
    categoryTitle:$("category-title"),
    modal: Handlebars.compile( $("#user-profile").html() ),
    usersTemplate: Handlebars.compile( $("#usersTemplate").html() ),
    userProfileTemplate: Handlebars.compile( $("#userProfileTemplate").html() ),
  }

/********************
Event Listeners
*********************/


env.categorySelectors.on("click", ".category-link",function(event){
  event.preventDefault();

  let categoryName = $(event.target).attr("data-category-name");

  // get users information from server
  console.log("getting data .....");

  $.getJSON("https://ga-connected.herokuapp.com/users.json", function(users){
    console.log("data recevied.....");

    let fileredUsers = _.findWhere(users, {
      role: categoryName
    });

    // MAKE USERS TEMPLATE
    var selectedCategory = env.usersTemplate({ users: users});

    env.mainContect.html(selectedCategory);
  });
})

env.mainContect.on("click", "<modal-button>",function(event){
  // event.preventDefault();

  let categoryName = $(event.target).attr("data-modal-id");

  // get users information from server
  console.log("getting data .....");

  $.getJSON("https://ga-connected.herokuapp.com/users.json", function(users){
    console.log("data recevied.....");



  });
})
