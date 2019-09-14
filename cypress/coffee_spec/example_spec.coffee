describe 'My First Test', ->
  it 'Checks that the menu bar appears on small screens', ->
    cy.visit 'localhost:3000'
    cy.viewport "iphone-6"
    cy.contains "Xtreme Kleen"
    cy.get(".material-icons").click()
    cy.get("#mobile-demo > :nth-child(3) > a").should("be.visible")
