###### Class com.google.firebase.iid.FirebaseInstanceId$$Lambda$6 (com.google.firebase.iid.FirebaseInstanceId$$Lambda$6)
.class final synthetic Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$6;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final b:Lcom/google/firebase/iid/Store$Token;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/Store$Token;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$6;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$6;->b:Lcom/google/firebase/iid/Store$Token;

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$6;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$6;->b:Lcom/google/firebase/iid/Store$Token;

    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->w(Lcom/google/firebase/iid/Store$Token;Lcom/google/firebase/iid/InstanceIdResult;)V

    return-void
.end method
