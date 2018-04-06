/*
 * generated by Xtext 2.12.0
 */
package org.eclipse.gemoc.serializer;

import com.google.inject.Inject;
import java.util.Set;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.gemoc.dsl.Dsl;
import org.eclipse.gemoc.dsl.DslPackage;
import org.eclipse.gemoc.dsl.Entry;
import org.eclipse.gemoc.dsl.EntryValue;
import org.eclipse.gemoc.services.DslGrammarAccess;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Parameter;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.serializer.ISerializationContext;
import org.eclipse.xtext.serializer.acceptor.SequenceFeeder;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;

@SuppressWarnings("all")
public class DslSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private DslGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == DslPackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case DslPackage.DSL:
				sequence_Dsl(context, (Dsl) semanticObject); 
				return; 
			case DslPackage.ENTRY:
				sequence_Entry(context, (Entry) semanticObject); 
				return; 
			case DslPackage.ENTRY_VALUE:
				sequence_EntryValue(context, (EntryValue) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Contexts:
	 *     Dsl returns Dsl
	 *
	 * Constraint:
	 *     entries+=Entry*
	 */
	protected void sequence_Dsl(ISerializationContext context, Dsl semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     EntryValue returns EntryValue
	 *
	 * Constraint:
	 *     (entryLines+=ENTRYVALUE_LINE (entryLines+=ENTRYVALUE_LINE | entryLines+=ENTRYVALUE_LINE | entryLines+=ENTRYVALUE_LINE)*)
	 */
	protected void sequence_EntryValue(ISerializationContext context, EntryValue semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Entry returns Entry
	 *
	 * Constraint:
	 *     (key=ENTRYKEY value=EntryValue)
	 */
	protected void sequence_Entry(ISerializationContext context, Entry semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, DslPackage.Literals.ENTRY__KEY) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, DslPackage.Literals.ENTRY__KEY));
			if (transientValues.isValueTransient(semanticObject, DslPackage.Literals.ENTRY__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, DslPackage.Literals.ENTRY__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getEntryAccess().getKeyENTRYKEYTerminalRuleCall_1_0(), semanticObject.getKey());
		feeder.accept(grammarAccess.getEntryAccess().getValueEntryValueParserRuleCall_5_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
}
