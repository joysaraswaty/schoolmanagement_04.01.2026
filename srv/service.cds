using { schoolmanagement as my } from '../db/schema.cds';

@path: '/service/schoolmanagement'
@requires: 'authenticated-user'
service schoolmanagementSrv {
  @odata.draft.enabled
  entity School as projection on my.School;
  entity Student as projection on my.Student;
}