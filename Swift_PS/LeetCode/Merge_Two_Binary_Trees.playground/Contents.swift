/*
 2 개의 이진 트리가 주어지고 그 중 하나가 다른 하나를 덮을 때 두 트리의 일부 노드가 겹쳐져 있고 다른 트리는 그렇지 않다고 상상해보십시오.

 그것들을 새로운 이진 트리로 병합해야합니다. 병합 규칙은 두 노드가 겹치는 경우 병합 된 노드의 새 값으로 노드 값을 합산하는 것입니다. 그렇지 않으면 NOT null 노드가 새 트리의 노드로 사용됩니다.
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
class Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        if let t1 = t1 {
            if let t2 = t2 {
                t1.val += t2.val
            } else {
                return t1
            }
        } else if let t2 = t2 {
            return t2
        }

        t1?.left = mergeTrees(t1?.left, t2?.left)
        t1?.right = mergeTrees(t1?.right, t2?.right)
        
        return t1
    }
}
