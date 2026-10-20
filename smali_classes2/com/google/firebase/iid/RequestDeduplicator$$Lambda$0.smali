###### Class com.google.firebase.iid.RequestDeduplicator$$Lambda$0 (com.google.firebase.iid.RequestDeduplicator$$Lambda$0)
.class final synthetic Lcom/google/firebase/iid/RequestDeduplicator$$Lambda$0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final a:Lcom/google/firebase/iid/RequestDeduplicator;

.field private final b:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/RequestDeduplicator;Landroid/util/Pair;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/RequestDeduplicator$$Lambda$0;->a:Lcom/google/firebase/iid/RequestDeduplicator;

    iput-object p2, p0, Lcom/google/firebase/iid/RequestDeduplicator$$Lambda$0;->b:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/iid/RequestDeduplicator$$Lambda$0;->a:Lcom/google/firebase/iid/RequestDeduplicator;

    iget-object v1, p0, Lcom/google/firebase/iid/RequestDeduplicator$$Lambda$0;->b:Landroid/util/Pair;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/RequestDeduplicator;->b(Landroid/util/Pair;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method
