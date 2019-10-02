/*
 이진 검색 트리 (BST)의 루트 노드와 값이 주어집니다.
 BST에서 노드의 값이 주어진 값과 같은 노드를 찾아야합니다.
 해당 노드로 루팅 된 하위 트리를 반환합니다.
 그러한 노드가 존재하지 않으면 NULL을 반환해야합니다.
 */

func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    if root == nil {
        return nil
    }
    
    if root!.val > val {
        return searchBST(root!.left, val)
    } else if root!.val < val {
        return searchBST(root!.right, val)
    } else {
        return root
    }
}
