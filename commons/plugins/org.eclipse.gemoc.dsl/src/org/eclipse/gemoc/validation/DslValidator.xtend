/*
 * generated by Xtext 2.10.0
 */
package org.eclipse.gemoc.validation

import org.eclipse.gemoc.dsl.Dsl
import org.eclipse.gemoc.dsl.DslPackage

import org.eclipse.xtext.validation.Check
import org.eclipse.gemoc.dsl.Entry

/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class DslValidator extends AbstractDslValidator {
	
	public static val MISSING_NAME = 'missingName'
	public static val DUPLICATEKEY = 'duplicateKey'

	@Check
	def checkDSLHasName(Dsl dsl) {
		if (dsl.name.isEmpty) {
			error('Missing an entry "name"', 
					DslPackage.Literals.DSL__NAME,
					MISSING_NAME)
		}
	}
	
	@Check
	def checkDuplicateKeys(Entry entry) {
		val dsl = entry.eContainer as Dsl
		if (!dsl.entries.filter[e | e.key == entry.key].forall[e | e === entry]) {
			error('Duplicate key "'+entry.key+'"', 
					DslPackage.Literals.ENTRY__KEY,
					DUPLICATEKEY)
		}
	}
	
}
