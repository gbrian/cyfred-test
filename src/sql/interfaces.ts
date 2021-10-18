export interface Column {
    name: string;
    type: string;
    ddl: string;
}

export interface Relation {
    fromColumn: string;
    tableName: string;
    toColumn: string;
}

export interface Table {
    name: string;
    columns: Column[];
    relations: Relation[];
}
