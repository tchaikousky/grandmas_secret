const addCommentButton = document.getElementById('addCommentButton');
const postButton = document.getElementById('postButton');

addCommentButton.addEventListener("click", function(e) {
    
    const addCommentButtonContainer = document.getElementById('addCommentButtonContainer');
    const commentContainer = document.getElementById('commentContainer');
    const commentTextArea = document.createElement('textarea');
    const newCommentContainer = document.createElement('div');
    const newButtonContainer = document.createElement('p');
    
    const cancelButton = document.createElement('button');
    newCommentContainer.id = 'newCommentContainer';
    commentTextArea.id = 'commentTextArea';
    commentTextArea.name = 'commentTextArea';
    // submitButton.id = 'submitButton';
    // submitButton.innerHTML = 'Submit';
    cancelButton.id = 'cancelButton';
    cancelButton.innerHTML = 'Cancel';
    postButton.style.display ='inline';
    // postButton.type = "submit";

    addCommentButtonContainer.removeChild(addCommentButton);
    // addCommentButtonContainer.removeChild(postButton);
    newButtonContainer.appendChild(postButton);
    newButtonContainer.appendChild(cancelButton);
    newCommentContainer.appendChild(commentTextArea);
    newCommentContainer.appendChild(newButtonContainer);
    commentContainer.appendChild(newCommentContainer);
    addCommentButtonContainer.appendChild(newCommentContainer);
    // commentContainer.removeChild(addCommentButtonContainer);
    

});