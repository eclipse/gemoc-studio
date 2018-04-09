/*
 * generated by Xtext 2.12.0
 */
package org.eclipse.gemoc.ide.contentassist.antlr;

import com.google.inject.Inject;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.gemoc.ide.contentassist.antlr.internal.InternalDslParser;
import org.eclipse.gemoc.services.DslGrammarAccess;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ide.editor.contentassist.antlr.AbstractContentAssistParser;

public class DslParser extends AbstractContentAssistParser {

	@Inject
	private DslGrammarAccess grammarAccess;

	private Map<AbstractElement, String> nameMappings;

	@Override
	protected InternalDslParser createParser() {
		InternalDslParser result = new InternalDslParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}

	@Override
	protected String getRuleName(AbstractElement element) {
		if (nameMappings == null) {
			nameMappings = new HashMap<AbstractElement, String>() {
				private static final long serialVersionUID = 1L;
				{
					put(grammarAccess.getDslAccess().getAlternatives_2_0(), "rule__Dsl__Alternatives_2_0");
					put(grammarAccess.getDslAccess().getNameAlternatives_7_0(), "rule__Dsl__NameAlternatives_7_0");
					put(grammarAccess.getDslAccess().getAlternatives_9_0(), "rule__Dsl__Alternatives_9_0");
					put(grammarAccess.getEntryValueAccess().getAlternatives_2_1(), "rule__EntryValue__Alternatives_2_1");
					put(grammarAccess.getENTRYVALUE_LINEAccess().getAlternatives_0_1(), "rule__ENTRYVALUE_LINE__Alternatives_0_1");
					put(grammarAccess.getENTRYVALUE_LINEAccess().getAlternatives_1(), "rule__ENTRYVALUE_LINE__Alternatives_1");
					put(grammarAccess.getENTRYVALUE_LINEAccess().getAlternatives_2_0(), "rule__ENTRYVALUE_LINE__Alternatives_2_0");
					put(grammarAccess.getENTRYVALUE_LINEAccess().getAlternatives_2_1(), "rule__ENTRYVALUE_LINE__Alternatives_2_1");
					put(grammarAccess.getDslAccess().getGroup(), "rule__Dsl__Group__0");
					put(grammarAccess.getDslAccess().getGroup_1(), "rule__Dsl__Group_1__0");
					put(grammarAccess.getDslAccess().getGroup_2(), "rule__Dsl__Group_2__0");
					put(grammarAccess.getDslAccess().getGroup_2_1(), "rule__Dsl__Group_2_1__0");
					put(grammarAccess.getDslAccess().getGroup_8(), "rule__Dsl__Group_8__0");
					put(grammarAccess.getDslAccess().getGroup_9(), "rule__Dsl__Group_9__0");
					put(grammarAccess.getDslAccess().getGroup_9_1(), "rule__Dsl__Group_9_1__0");
					put(grammarAccess.getEntryAccess().getGroup(), "rule__Entry__Group__0");
					put(grammarAccess.getEntryValueAccess().getGroup(), "rule__EntryValue__Group__0");
					put(grammarAccess.getEntryValueAccess().getGroup_2(), "rule__EntryValue__Group_2__0");
					put(grammarAccess.getEntryValueAccess().getGroup_2_1_0(), "rule__EntryValue__Group_2_1_0__0");
					put(grammarAccess.getEntryValueAccess().getGroup_2_1_0_0(), "rule__EntryValue__Group_2_1_0_0__0");
					put(grammarAccess.getEntryValueAccess().getGroup_2_1_0_0_0(), "rule__EntryValue__Group_2_1_0_0_0__0");
					put(grammarAccess.getEntryValueAccess().getGroup_2_1_1(), "rule__EntryValue__Group_2_1_1__0");
					put(grammarAccess.getENTRYVALUE_LINEAccess().getGroup(), "rule__ENTRYVALUE_LINE__Group__0");
					put(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_0(), "rule__ENTRYVALUE_LINE__Group_0__0");
					put(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_0_1_0(), "rule__ENTRYVALUE_LINE__Group_0_1_0__0");
					put(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_2(), "rule__ENTRYVALUE_LINE__Group_2__0");
					put(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_3(), "rule__ENTRYVALUE_LINE__Group_3__0");
					put(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_3_2(), "rule__ENTRYVALUE_LINE__Group_3_2__0");
					put(grammarAccess.getDslAccess().getNameAssignment_7(), "rule__Dsl__NameAssignment_7");
					put(grammarAccess.getDslAccess().getEntriesAssignment_9_0_0(), "rule__Dsl__EntriesAssignment_9_0_0");
					put(grammarAccess.getEntryAccess().getKeyAssignment_1(), "rule__Entry__KeyAssignment_1");
					put(grammarAccess.getEntryAccess().getValueAssignment_5(), "rule__Entry__ValueAssignment_5");
					put(grammarAccess.getEntryValueAccess().getEntryLinesAssignment_1(), "rule__EntryValue__EntryLinesAssignment_1");
					put(grammarAccess.getEntryValueAccess().getEntryLinesAssignment_2_1_0_1(), "rule__EntryValue__EntryLinesAssignment_2_1_0_1");
					put(grammarAccess.getEntryValueAccess().getEntryLinesAssignment_2_1_1_2(), "rule__EntryValue__EntryLinesAssignment_2_1_1_2");
				}
			};
		}
		return nameMappings.get(element);
	}
			
	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] {  };
	}

	public DslGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(DslGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}
