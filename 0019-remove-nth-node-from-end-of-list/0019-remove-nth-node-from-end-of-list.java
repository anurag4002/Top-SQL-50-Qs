class Solution {
    public ListNode removeNthFromEnd(ListNode head, int n) {

        ListNode dummy = new ListNode(0);
        dummy.next = head;

        ListNode fast = dummy;
        ListNode slow = dummy;

        // fast ko n+1 steps aage le jao
        for (int i = 0; i <= n; i++) {
            fast = fast.next;
        }

        // dono ko saath me chalao
        while (fast != null) {
            fast = fast.next;
            slow = slow.next;
        }

        // delete nth node from end
        slow.next = slow.next.next;

        return dummy.next;
    }
}
