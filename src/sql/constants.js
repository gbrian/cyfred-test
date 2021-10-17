/**
 * Table types
 * @param final Table has no relation
 * @param nm Table is used to map NM relations
 * @param composed Table points to other tables 
 * @param unknown Table type not recognised
 */
export const TABLE_TYPE = {
    final: 'final',
    nm: 'nm',
    composed: 'composed',
    unknown: 'unknown'
}