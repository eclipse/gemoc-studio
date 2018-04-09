/*
 * generated by Xtext 2.12.0
 */
grammar InternalDsl;

options {
	superClass=AbstractInternalContentAssistParser;
	backtrack=true;
}

@lexer::header {
package org.eclipse.gemoc.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.gemoc.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.eclipse.gemoc.services.DslGrammarAccess;

}
@parser::members {
	private DslGrammarAccess grammarAccess;

	public void setGrammarAccess(DslGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleDsl
entryRuleDsl
:
{ before(grammarAccess.getDslRule()); }
	 ruleDsl
{ after(grammarAccess.getDslRule()); } 
	 EOF 
;

// Rule Dsl
ruleDsl 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDslAccess().getGroup()); }
		(rule__Dsl__Group__0)
		{ after(grammarAccess.getDslAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleEntry
entryRuleEntry
:
{ before(grammarAccess.getEntryRule()); }
	 ruleEntry
{ after(grammarAccess.getEntryRule()); } 
	 EOF 
;

// Rule Entry
ruleEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEntryAccess().getGroup()); }
		(rule__Entry__Group__0)
		{ after(grammarAccess.getEntryAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleEntryValue
entryRuleEntryValue
:
{ before(grammarAccess.getEntryValueRule()); }
	 ruleEntryValue
{ after(grammarAccess.getEntryValueRule()); } 
	 EOF 
;

// Rule EntryValue
ruleEntryValue 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEntryValueAccess().getGroup()); }
		(rule__EntryValue__Group__0)
		{ after(grammarAccess.getEntryValueAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleENTRYVALUE_LINE
entryRuleENTRYVALUE_LINE
:
{ before(grammarAccess.getENTRYVALUE_LINERule()); }
	 ruleENTRYVALUE_LINE
{ after(grammarAccess.getENTRYVALUE_LINERule()); } 
	 EOF 
;

// Rule ENTRYVALUE_LINE
ruleENTRYVALUE_LINE 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getGroup()); }
		(rule__ENTRYVALUE_LINE__Group__0)
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleEMPTY_LINE
entryRuleEMPTY_LINE
:
{ before(grammarAccess.getEMPTY_LINERule()); }
	 ruleEMPTY_LINE
{ after(grammarAccess.getEMPTY_LINERule()); } 
	 EOF 
;

// Rule EMPTY_LINE
ruleEMPTY_LINE 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEMPTY_LINEAccess().getLINE_STARTTerminalRuleCall()); }
		RULE_LINE_START
		{ after(grammarAccess.getEMPTY_LINEAccess().getLINE_STARTTerminalRuleCall()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Alternatives_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDslAccess().getEMPTY_LINEParserRuleCall_2_0_0()); }
		(ruleEMPTY_LINE)
		{ after(grammarAccess.getDslAccess().getEMPTY_LINEParserRuleCall_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getDslAccess().getSL_COMMENTTerminalRuleCall_2_0_1()); }
		RULE_SL_COMMENT
		{ after(grammarAccess.getDslAccess().getSL_COMMENTTerminalRuleCall_2_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__NameAlternatives_7_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDslAccess().getNameENTRYKEYTerminalRuleCall_7_0_0()); }
		RULE_ENTRYKEY
		{ after(grammarAccess.getDslAccess().getNameENTRYKEYTerminalRuleCall_7_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getDslAccess().getNameSTRINGTerminalRuleCall_7_0_1()); }
		RULE_STRING
		{ after(grammarAccess.getDslAccess().getNameSTRINGTerminalRuleCall_7_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Alternatives_9_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDslAccess().getEntriesAssignment_9_0_0()); }
		(rule__Dsl__EntriesAssignment_9_0_0)
		{ after(grammarAccess.getDslAccess().getEntriesAssignment_9_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getDslAccess().getEMPTY_LINEParserRuleCall_9_0_1()); }
		(ruleEMPTY_LINE)
		{ after(grammarAccess.getDslAccess().getEMPTY_LINEParserRuleCall_9_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getDslAccess().getSL_COMMENTTerminalRuleCall_9_0_2()); }
		RULE_SL_COMMENT
		{ after(grammarAccess.getDslAccess().getSL_COMMENTTerminalRuleCall_9_0_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Alternatives_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntryValueAccess().getGroup_2_1_0()); }
		(rule__EntryValue__Group_2_1_0__0)
		{ after(grammarAccess.getEntryValueAccess().getGroup_2_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getEntryValueAccess().getGroup_2_1_1()); }
		(rule__EntryValue__Group_2_1_1__0)
		{ after(grammarAccess.getEntryValueAccess().getGroup_2_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Alternatives_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_0_1_0()); }
		(rule__ENTRYVALUE_LINE__Group_0_1_0__0)
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_0_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_0_1_1()); }
		(RULE_WS)*
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_0_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getENTRYKEYTerminalRuleCall_1_0()); }
		RULE_ENTRYKEY
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getENTRYKEYTerminalRuleCall_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getSTRINGTerminalRuleCall_1_1()); }
		RULE_STRING
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getSTRINGTerminalRuleCall_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Alternatives_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_2_0_0()); }
		RULE_WS
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_2_0_1()); }
		RULE_SPECIAL_CHAR
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_2_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Alternatives_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getENTRYKEYTerminalRuleCall_2_1_0()); }
		RULE_ENTRYKEY
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getENTRYKEYTerminalRuleCall_2_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getSTRINGTerminalRuleCall_2_1_1()); }
		RULE_STRING
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getSTRINGTerminalRuleCall_2_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__0__Impl
	rule__Dsl__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getDslAction_0()); }
	()
	{ after(grammarAccess.getDslAccess().getDslAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__1__Impl
	rule__Dsl__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getGroup_1()); }
	(rule__Dsl__Group_1__0)*
	{ after(grammarAccess.getDslAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__2__Impl
	rule__Dsl__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getGroup_2()); }
	(rule__Dsl__Group_2__0)*
	{ after(grammarAccess.getDslAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__3__Impl
	rule__Dsl__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getNameKeyword_3()); }
	'name'
	{ after(grammarAccess.getDslAccess().getNameKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__4__Impl
	rule__Dsl__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getWSTerminalRuleCall_4()); }
	(RULE_WS)*
	{ after(grammarAccess.getDslAccess().getWSTerminalRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__5__Impl
	rule__Dsl__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getSEPARATORTerminalRuleCall_5()); }
	RULE_SEPARATOR
	{ after(grammarAccess.getDslAccess().getSEPARATORTerminalRuleCall_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__6__Impl
	rule__Dsl__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getWSTerminalRuleCall_6()); }
	(RULE_WS)*
	{ after(grammarAccess.getDslAccess().getWSTerminalRuleCall_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__7__Impl
	rule__Dsl__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getNameAssignment_7()); }
	(rule__Dsl__NameAssignment_7)
	{ after(grammarAccess.getDslAccess().getNameAssignment_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__8__Impl
	rule__Dsl__Group__9
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getGroup_8()); }
	(rule__Dsl__Group_8__0)*
	{ after(grammarAccess.getDslAccess().getGroup_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__9
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group__9__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group__9__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getGroup_9()); }
	(rule__Dsl__Group_9__0)*
	{ after(grammarAccess.getDslAccess().getGroup_9()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Dsl__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group_1__0__Impl
	rule__Dsl__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getCarriageReturnKeyword_1_0()); }
	('\r')?
	{ after(grammarAccess.getDslAccess().getCarriageReturnKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getLineFeedKeyword_1_1()); }
	'\n'
	{ after(grammarAccess.getDslAccess().getLineFeedKeyword_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Dsl__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group_2__0__Impl
	rule__Dsl__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getAlternatives_2_0()); }
	(rule__Dsl__Alternatives_2_0)
	{ after(grammarAccess.getDslAccess().getAlternatives_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getGroup_2_1()); }
	(rule__Dsl__Group_2_1__0)*
	{ after(grammarAccess.getDslAccess().getGroup_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Dsl__Group_2_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group_2_1__0__Impl
	rule__Dsl__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_2_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getCarriageReturnKeyword_2_1_0()); }
	('\r')?
	{ after(grammarAccess.getDslAccess().getCarriageReturnKeyword_2_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_2_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group_2_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_2_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getLineFeedKeyword_2_1_1()); }
	'\n'
	{ after(grammarAccess.getDslAccess().getLineFeedKeyword_2_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Dsl__Group_8__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group_8__0__Impl
	rule__Dsl__Group_8__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_8__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getCarriageReturnKeyword_8_0()); }
	('\r')?
	{ after(grammarAccess.getDslAccess().getCarriageReturnKeyword_8_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_8__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group_8__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_8__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getLineFeedKeyword_8_1()); }
	'\n'
	{ after(grammarAccess.getDslAccess().getLineFeedKeyword_8_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Dsl__Group_9__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group_9__0__Impl
	rule__Dsl__Group_9__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_9__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getAlternatives_9_0()); }
	(rule__Dsl__Alternatives_9_0)
	{ after(grammarAccess.getDslAccess().getAlternatives_9_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_9__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group_9__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_9__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getGroup_9_1()); }
	(rule__Dsl__Group_9_1__0)*
	{ after(grammarAccess.getDslAccess().getGroup_9_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Dsl__Group_9_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group_9_1__0__Impl
	rule__Dsl__Group_9_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_9_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getCarriageReturnKeyword_9_1_0()); }
	('\r')?
	{ after(grammarAccess.getDslAccess().getCarriageReturnKeyword_9_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_9_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Dsl__Group_9_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__Group_9_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDslAccess().getLineFeedKeyword_9_1_1()); }
	'\n'
	{ after(grammarAccess.getDslAccess().getLineFeedKeyword_9_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Entry__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__0__Impl
	rule__Entry__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getWSTerminalRuleCall_0()); }
	(RULE_WS)*
	{ after(grammarAccess.getEntryAccess().getWSTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__1__Impl
	rule__Entry__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getKeyAssignment_1()); }
	(rule__Entry__KeyAssignment_1)
	{ after(grammarAccess.getEntryAccess().getKeyAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__2__Impl
	rule__Entry__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getWSTerminalRuleCall_2()); }
	(RULE_WS)*
	{ after(grammarAccess.getEntryAccess().getWSTerminalRuleCall_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__3__Impl
	rule__Entry__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getSEPARATORTerminalRuleCall_3()); }
	RULE_SEPARATOR
	{ after(grammarAccess.getEntryAccess().getSEPARATORTerminalRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__4__Impl
	rule__Entry__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getWSTerminalRuleCall_4()); }
	(RULE_WS)*
	{ after(grammarAccess.getEntryAccess().getWSTerminalRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entry__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryAccess().getValueAssignment_5()); }
	(rule__Entry__ValueAssignment_5)
	{ after(grammarAccess.getEntryAccess().getValueAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__EntryValue__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group__0__Impl
	rule__EntryValue__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getEntryValueAction_0()); }
	()
	{ after(grammarAccess.getEntryValueAccess().getEntryValueAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group__1__Impl
	rule__EntryValue__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getEntryLinesAssignment_1()); }
	(rule__EntryValue__EntryLinesAssignment_1)
	{ after(grammarAccess.getEntryValueAccess().getEntryLinesAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getGroup_2()); }
	(rule__EntryValue__Group_2__0)*
	{ after(grammarAccess.getEntryValueAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__EntryValue__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group_2__0__Impl
	rule__EntryValue__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getWSTerminalRuleCall_2_0()); }
	(RULE_WS)*
	{ after(grammarAccess.getEntryValueAccess().getWSTerminalRuleCall_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getAlternatives_2_1()); }
	(rule__EntryValue__Alternatives_2_1)
	{ after(grammarAccess.getEntryValueAccess().getAlternatives_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__EntryValue__Group_2_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group_2_1_0__0__Impl
	rule__EntryValue__Group_2_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getGroup_2_1_0_0()); }
	(rule__EntryValue__Group_2_1_0_0__0)
	{ after(grammarAccess.getEntryValueAccess().getGroup_2_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group_2_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getEntryLinesAssignment_2_1_0_1()); }
	(rule__EntryValue__EntryLinesAssignment_2_1_0_1)
	{ after(grammarAccess.getEntryValueAccess().getEntryLinesAssignment_2_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__EntryValue__Group_2_1_0_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group_2_1_0_0__0__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_0_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getGroup_2_1_0_0_0()); }
	(rule__EntryValue__Group_2_1_0_0_0__0)
	{ after(grammarAccess.getEntryValueAccess().getGroup_2_1_0_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__EntryValue__Group_2_1_0_0_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group_2_1_0_0_0__0__Impl
	rule__EntryValue__Group_2_1_0_0_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_0_0_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getCommaKeyword_2_1_0_0_0_0()); }
	','
	{ after(grammarAccess.getEntryValueAccess().getCommaKeyword_2_1_0_0_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_0_0_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group_2_1_0_0_0__1__Impl
	rule__EntryValue__Group_2_1_0_0_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_0_0_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getWSTerminalRuleCall_2_1_0_0_0_1()); }
	(RULE_WS)*
	{ after(grammarAccess.getEntryValueAccess().getWSTerminalRuleCall_2_1_0_0_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_0_0_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group_2_1_0_0_0__2__Impl
	rule__EntryValue__Group_2_1_0_0_0__3
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_0_0_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getBackslashKeyword_2_1_0_0_0_2()); }
	'\\'
	{ after(grammarAccess.getEntryValueAccess().getBackslashKeyword_2_1_0_0_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_0_0_0__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group_2_1_0_0_0__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_0_0_0__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getLINE_STARTTerminalRuleCall_2_1_0_0_0_3()); }
	RULE_LINE_START
	{ after(grammarAccess.getEntryValueAccess().getLINE_STARTTerminalRuleCall_2_1_0_0_0_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__EntryValue__Group_2_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group_2_1_1__0__Impl
	rule__EntryValue__Group_2_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getCommaKeyword_2_1_1_0()); }
	','
	{ after(grammarAccess.getEntryValueAccess().getCommaKeyword_2_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group_2_1_1__1__Impl
	rule__EntryValue__Group_2_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getWSTerminalRuleCall_2_1_1_1()); }
	(RULE_WS)*
	{ after(grammarAccess.getEntryValueAccess().getWSTerminalRuleCall_2_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EntryValue__Group_2_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__Group_2_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntryValueAccess().getEntryLinesAssignment_2_1_1_2()); }
	(rule__EntryValue__EntryLinesAssignment_2_1_1_2)
	{ after(grammarAccess.getEntryValueAccess().getEntryLinesAssignment_2_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ENTRYVALUE_LINE__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group__0__Impl
	rule__ENTRYVALUE_LINE__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_0()); }
	(rule__ENTRYVALUE_LINE__Group_0__0)?
	{ after(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group__1__Impl
	rule__ENTRYVALUE_LINE__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getENTRYVALUE_LINEAccess().getAlternatives_1()); }
	(rule__ENTRYVALUE_LINE__Alternatives_1)
	{ after(grammarAccess.getENTRYVALUE_LINEAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group__2__Impl
	rule__ENTRYVALUE_LINE__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_2()); }
	(rule__ENTRYVALUE_LINE__Group_2__0)*
	{ after(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_3()); }
	(rule__ENTRYVALUE_LINE__Group_3__0)?
	{ after(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ENTRYVALUE_LINE__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group_0__0__Impl
	rule__ENTRYVALUE_LINE__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_0_0()); }
		(RULE_SPECIAL_CHAR)
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_0_0()); }
	)
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_0_0()); }
		(RULE_SPECIAL_CHAR)*
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_0_0()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getENTRYVALUE_LINEAccess().getAlternatives_0_1()); }
	(rule__ENTRYVALUE_LINE__Alternatives_0_1)
	{ after(grammarAccess.getENTRYVALUE_LINEAccess().getAlternatives_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ENTRYVALUE_LINE__Group_0_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group_0_1_0__0__Impl
	rule__ENTRYVALUE_LINE__Group_0_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_0_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_0_1_0_0()); }
		(RULE_WS)
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_0_1_0_0()); }
	)
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_0_1_0_0()); }
		(RULE_WS)*
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_0_1_0_0()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_0_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group_0_1_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_0_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_0_1_0_1()); }
		(RULE_SPECIAL_CHAR)
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_0_1_0_1()); }
	)
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_0_1_0_1()); }
		(RULE_SPECIAL_CHAR)*
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_0_1_0_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ENTRYVALUE_LINE__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group_2__0__Impl
	rule__ENTRYVALUE_LINE__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getENTRYVALUE_LINEAccess().getAlternatives_2_0()); }
	(rule__ENTRYVALUE_LINE__Alternatives_2_0)*
	{ after(grammarAccess.getENTRYVALUE_LINEAccess().getAlternatives_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getENTRYVALUE_LINEAccess().getAlternatives_2_1()); }
	(rule__ENTRYVALUE_LINE__Alternatives_2_1)
	{ after(grammarAccess.getENTRYVALUE_LINEAccess().getAlternatives_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ENTRYVALUE_LINE__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group_3__0__Impl
	rule__ENTRYVALUE_LINE__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_3_0()); }
	(RULE_WS)*
	{ after(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group_3__1__Impl
	rule__ENTRYVALUE_LINE__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_3_1()); }
		(RULE_SPECIAL_CHAR)
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_3_1()); }
	)
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_3_1()); }
		(RULE_SPECIAL_CHAR)*
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_3_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_3_2()); }
	(rule__ENTRYVALUE_LINE__Group_3_2__0)*
	{ after(grammarAccess.getENTRYVALUE_LINEAccess().getGroup_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ENTRYVALUE_LINE__Group_3_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group_3_2__0__Impl
	rule__ENTRYVALUE_LINE__Group_3_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_3_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_3_2_0()); }
		(RULE_WS)
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_3_2_0()); }
	)
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_3_2_0()); }
		(RULE_WS)*
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getWSTerminalRuleCall_3_2_0()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_3_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ENTRYVALUE_LINE__Group_3_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ENTRYVALUE_LINE__Group_3_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_3_2_1()); }
		(RULE_SPECIAL_CHAR)
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_3_2_1()); }
	)
	(
		{ before(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_3_2_1()); }
		(RULE_SPECIAL_CHAR)*
		{ after(grammarAccess.getENTRYVALUE_LINEAccess().getSPECIAL_CHARTerminalRuleCall_3_2_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Dsl__NameAssignment_7
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDslAccess().getNameAlternatives_7_0()); }
		(rule__Dsl__NameAlternatives_7_0)
		{ after(grammarAccess.getDslAccess().getNameAlternatives_7_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dsl__EntriesAssignment_9_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDslAccess().getEntriesEntryParserRuleCall_9_0_0_0()); }
		ruleEntry
		{ after(grammarAccess.getDslAccess().getEntriesEntryParserRuleCall_9_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__KeyAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntryAccess().getKeyENTRYKEYTerminalRuleCall_1_0()); }
		RULE_ENTRYKEY
		{ after(grammarAccess.getEntryAccess().getKeyENTRYKEYTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entry__ValueAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntryAccess().getValueEntryValueParserRuleCall_5_0()); }
		ruleEntryValue
		{ after(grammarAccess.getEntryAccess().getValueEntryValueParserRuleCall_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__EntryLinesAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntryValueAccess().getEntryLinesENTRYVALUE_LINEParserRuleCall_1_0()); }
		ruleENTRYVALUE_LINE
		{ after(grammarAccess.getEntryValueAccess().getEntryLinesENTRYVALUE_LINEParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__EntryLinesAssignment_2_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntryValueAccess().getEntryLinesENTRYVALUE_LINEParserRuleCall_2_1_0_1_0()); }
		ruleENTRYVALUE_LINE
		{ after(grammarAccess.getEntryValueAccess().getEntryLinesENTRYVALUE_LINEParserRuleCall_2_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__EntryValue__EntryLinesAssignment_2_1_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntryValueAccess().getEntryLinesENTRYVALUE_LINEParserRuleCall_2_1_1_2_0()); }
		ruleENTRYVALUE_LINE
		{ after(grammarAccess.getEntryValueAccess().getEntryLinesENTRYVALUE_LINEParserRuleCall_2_1_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ENTRYKEY : ('a'..'z'|'A'..'Z'|'_'|'.'|'0'..'9') ('a'..'z'|'A'..'Z'|'_'|'.'|'0'..'9')*;

RULE_STRING : '"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\'|'\r'|'\n')|~(('\\'|'"'|'\r'|'\n')))* '"';

RULE_LINE_START : '\r'? '\n' RULE_WS*;

RULE_SEPARATOR : '=';

RULE_SL_COMMENT : ('!'|'#') ~(('\n'|'\r'))*;

RULE_WS : (' '|'\t');

RULE_SPECIAL_CHAR : ('#'..'+'|'-'..'/'|':'..'<'|'>'..'@'|'['..'^'|'{'..'~');

RULE_ANY_OTHER : .;
