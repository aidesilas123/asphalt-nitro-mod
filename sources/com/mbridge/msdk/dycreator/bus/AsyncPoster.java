package com.mbridge.msdk.dycreator.bus;

/* JADX INFO: loaded from: classes4.dex */
class AsyncPoster implements Runnable {
    private final PendingPostQueue a = new PendingPostQueue();
    private final EventBus b;

    AsyncPoster(EventBus eventBus) {
        this.b = eventBus;
    }

    public void enqueue(Subscription subscription, Object obj) {
        this.a.a(PendingPost.a(subscription, obj));
        EventBus.a.execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        PendingPost pendingPostA = this.a.a();
        if (pendingPostA == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.b.a(pendingPostA);
    }
}
