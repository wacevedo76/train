// ES6 bare block used to create sudo namespace
{
  // ToDo: make element id an randomly generated alphanumeric

  // used to keep track of taskItem ids
  // :Future Feature - load from database
  let elementId = 0;

  // Used to keep track of taskItem raw data
  // :Future Feature used to update database
  const taskOjectDic = {};
  
  // Create TaskItem raw data object
  function createTaskObject(value) {
      const newTask = {};
      newTask.value = value;
      newTask.id = String(elementId);
      elementId++;

    return newTask;
  }

  // TaskItem HTML element constructor
  function createTaskElement(taskObject) {
    // TaskItem Primary Container
    const newElement = document.createElement('div');
    newElement.id = taskObject.id;
    newElement.className = 'taskItem';

    // TaskItem Description
    const newElementDescription = document.createElement('p');
    newElementDescription.textContent = taskObject.value;

    // TaskItem Buttons Container
    const newElementButtonContainer = document.createElement('div');
    newElementButtonContainer.className = 'buttonContainer';

    // Create Edit Button
    const newElementEditButton = document.createElement('button');
    newElementEditButton.value = 'edit';
    newElementEditButton.textContent = 'Edit';

    // Create Delete Button
    const newElementDeleteButton = document.createElement('button');
    newElementDeleteButton.value = 'delete';
    newElementDeleteButton.textContent = 'Delete';

    // Create Done Checkbox
    const newElementDoneCheckbox = document.createElement('input');
    newElementDoneCheckbox.type = 'checkbox';
    newElementDoneCheckbox.id = 'checkbox-' + taskObject.id;
    newElementDoneCheckbox.name = 'done';

    // ToDo: set a hidden update field

    // Construct Button Container
    newElementButtonContainer.appendChild(newElementEditButton);
    newElementButtonContainer.appendChild(newElementDeleteButton);
    newElementButtonContainer.appendChild(newElementDoneCheckbox);

    // Custruct TaskItem (newElement)
    newElement.appendChild(newElementDescription);
    newElement.appendChild(newElementButtonContainer);

    // add taskObject to task Object list for future persistance feature
    taskOjectDic[String(taskObject.id)] = taskObject;

    return newElement;
  }

  // set primary DOM Elements
  const to_do_list = document.querySelector("#to_do_list");
  const to_do_form = document.querySelector("#to_do_form");
  const to_do_text_enter = document.querySelector('#to_do_text_enter');

  // ToDo: Add a listclick event listener that propagates from individual elements for update
  //       and delete task functions
  to_do_list.addEventListener('click', (e) => {
    if(e.target.type == 'submit' || e.target.type == 'undefined'){
      e.preventDefault();
    }
    // Testing line
    // console.log(`${e.target.parentElement.parentElement.id}`);

    // Delete task item
    if(e.target.value == 'delete'){
      e.target.parentElement.parentElement.remove();
    }
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
}
