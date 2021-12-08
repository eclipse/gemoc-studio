/*
 * generated by Xtext 2.25.0
 */
package org.eclipse.gemoc.example.k3fsm.serializer;

import com.google.inject.Inject;
import java.util.Set;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.gemoc.example.k3fsm.FSM;
import org.eclipse.gemoc.example.k3fsm.K3fsmPackage;
import org.eclipse.gemoc.example.k3fsm.State;
import org.eclipse.gemoc.example.k3fsm.Transition;
import org.eclipse.gemoc.example.k3fsm.services.K3FSMGrammarAccess;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Parameter;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.serializer.ISerializationContext;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;

@SuppressWarnings("all")
public class K3FSMSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private K3FSMGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == K3fsmPackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case K3fsmPackage.FSM:
				sequence_FSM(context, (FSM) semanticObject); 
				return; 
			case K3fsmPackage.STATE:
				sequence_State(context, (State) semanticObject); 
				return; 
			case K3fsmPackage.TRANSITION:
				sequence_Transition(context, (Transition) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Contexts:
	 *     FSM returns FSM
	 *
	 * Constraint:
	 *     (
	 *         name=EString 
	 *         unprocessedString=EString? 
	 *         consummedString=EString? 
	 *         producedString=EString? 
	 *         initialState=[State|EString] 
	 *         finalState=[State|EString]? 
	 *         currentState=[State|EString]? 
	 *         (ownedStates+=State ownedStates+=State*)?
	 *     )
	 */
	protected void sequence_FSM(ISerializationContext context, FSM semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     State returns State
	 *
	 * Constraint:
	 *     (name=EString (outgoingTransitions+=Transition outgoingTransitions+=Transition*)?)
	 */
	protected void sequence_State(ISerializationContext context, State semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Transition returns Transition
	 *
	 * Constraint:
	 *     (name=EString input=EString? output=EString? target=[State|EString])
	 */
	protected void sequence_Transition(ISerializationContext context, Transition semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
