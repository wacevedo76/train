// IIFE is used to create a psudo name space
(function() {
  // ToDo: make element id an randomly generated alphanumeric
  let elementId = 0;
  
  // Create element functions
  function createTaskObject(value) {
      const newTask = {};
      newTask.value = value;
      newTask.id = String(elementId);
      elementId++;

    return newTask;
  }
  
  function createTaskElement(taskObject) {
    const newElement = document.createElement('div');
    newElement.id = taskObject.id;

    const newElementText = document.createElement('p');
    newElementText.textContent = taskObject.value;
    
    // ToDo: add checkbox that, when check, puts a strike through the text
    // ToDo: add a delete button
    // ToDo: set a hidden update field
    // ToDo: add an update button

    newElement.appendChild(newElementText);

    return newElement;
  }
  
  // set primary DOM Elements
  const to_do_list = document.querySelector("#to_do_list");
  const to_do_form = document.querySelector("#to_do_form");
  const to_do_text_enter = document.querySelector('#to_do_text_enter');

  // ToDo: Add a listclick event listener that propagates from individual elements for update
  //       and delete task functions
  to_do_list.addEventListener('click', (e) => {
    e.preventDefault();
    console.log('Element was clicked');
  });

  // Decare form event listener
  to_do_form.addEventListener('submit', (e) => {
    e.preventDefault();
    if (!to_do_text_enter.value.length == 0) {
      const elementValue = to_do_text_enter.value;
      const taskObject = createTaskObject(elementValue);
      const taskElement = createTaskElement(taskObject);

      to_do_list.appendChild(taskElement); 
    } else {
      console.log('no value has been set');
    }
  });
})();
