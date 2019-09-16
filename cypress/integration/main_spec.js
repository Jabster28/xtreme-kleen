/// <reference types="Cypress" />
describe('My First Test', function() {
  return it('Checks that the menu bar appears on small screens', function() {
    cy.visit('localhost:3000');
    cy.viewport("iphone-6");
    cy.get("#mobile-demo > :nth-child(3) > a").should("exist").should("not.be.visible")
    cy.contains("Xtreme Kleen");
    cy.get(".material-icons").click();
    cy.get("#mobile-demo > :nth-child(3) > a").should("be.visible");
  });
});
