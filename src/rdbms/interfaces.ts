import { Table } from '../sql/interfaces'

export interface DBConnector {
    getTables () : Table[];
}