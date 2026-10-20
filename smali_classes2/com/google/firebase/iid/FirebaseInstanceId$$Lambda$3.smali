###### Class com.google.firebase.iid.FirebaseInstanceId$$Lambda$3 (com.google.firebase.iid.FirebaseInstanceId$$Lambda$3)
.class final synthetic Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.1.0"

# interfaces
.implements Lcom/google/firebase/iid/RequestDeduplicator$GetTokenRequest;


# instance fields
.field private final a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/firebase/iid/Store$Token;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/Store$Token;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;->e:Lcom/google/firebase/iid/Store$Token;

    return-void
.end method


# virtual methods
.method public start()Lcom/google/android/gms/tasks/Task;
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;->e:Lcom/google/firebase/iid/Store$Token;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/Store$Token;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
