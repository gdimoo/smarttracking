import { database } from 'firebase/app'

/**
 *
 * @param {*} tableName
 * @param {*} uId
 * @param {*} needThis
 *
 * @TODO This function will help in fetching any-field from firebase-table by user-UID
 */

const getByQuery = async (tableName = 'userData', uId) => {
  return database()
    .ref(`/${tableName}/${uId}`)
    .once(
      'value',
      results => {
        return results
      },
      error => error
    )
}

export { getByQuery }
