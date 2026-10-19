###### Class com.google.firebase.iid.InstanceIdResultImpl (com.google.firebase.iid.InstanceIdResultImpl)
.class final Lcom/google/firebase/iid/InstanceIdResultImpl;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.1.0"

# interfaces
.implements Lcom/google/firebase/iid/InstanceIdResult;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/InstanceIdResultImpl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/iid/InstanceIdResultImpl;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/InstanceIdResultImpl;->b:Ljava/lang/String;

    return-object v0
.end method
