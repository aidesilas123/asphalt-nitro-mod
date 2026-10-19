###### Class com.google.firebase.iid.GmsRpc$$Lambda$0 (com.google.firebase.iid.GmsRpc$$Lambda$0)
.class final synthetic Lcom/google/firebase/iid/GmsRpc$$Lambda$0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final a:Lcom/google/firebase/iid/GmsRpc;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/GmsRpc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/GmsRpc$$Lambda$0;->a:Lcom/google/firebase/iid/GmsRpc;

    return-void
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/GmsRpc$$Lambda$0;->a:Lcom/google/firebase/iid/GmsRpc;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/GmsRpc;->g(Lcom/google/android/gms/tasks/Task;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
