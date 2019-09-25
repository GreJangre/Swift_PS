/*
 이진 검색 트리의 루트 노드가 주어지면 L과 R 사이의 값을 가진 모든 노드의 값의 합을 반환합니다 (포함).

 이진 검색 트리는 고유한 값을 갖습니다.
 */

/**
* Definition for a binary tree node.
* public class TreeNode {
*     public var val: Int
*     public var left: TreeNode?
*     public var right: TreeNode?
*     public init(_ val: Int) {
*         self.val = val
*         self.left = nil
*         self.right = nil
*     }
* }
*/

var sum = 0
func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
    if (root == nil) {
        return 0
    }
    if (L <= root!.val) && (root!.val <= R) {
        sum += root!.val
    }
    if (L < root!.val) {
        rangeSumBST(root!.left, L, R)
    }
    if (root!.val < R) {
        rangeSumBST(root!.right, L, R)
    }
    return sum
}
