###### Class com.google.firebase.messaging.f (com.google.firebase.messaging.f)
.class public final synthetic Lcom/google/firebase/messaging/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# static fields
.field public static final synthetic a:Lcom/google/firebase/messaging/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/messaging/f;

    invoke-direct {v0}, Lcom/google/firebase/messaging/f;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/f;->a:Lcom/google/firebase/messaging/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->e(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
