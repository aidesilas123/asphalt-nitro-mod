###### Class com.google.common.util.concurrent.ExecutionSequencer (com.google.common.util.concurrent.ExecutionSequencer)
.class public final Lcom/google/common/util/concurrent/ExecutionSequencer;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;,
        Lcom/google/common/util/concurrent/ExecutionSequencer$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/common/util/concurrent/h0<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/common/util/concurrent/ExecutionSequencer$a;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/h0;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/common/util/concurrent/ExecutionSequencer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ExecutionSequencer$a;-><init>(Lcom/google/common/util/concurrent/w;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer;->b:Lcom/google/common/util/concurrent/ExecutionSequencer$a;

    return-void
.end method

.method public static create()Lcom/google/common/util/concurrent/ExecutionSequencer;
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/ExecutionSequencer;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ExecutionSequencer;-><init>()V

    return-object v0
.end method

###### Class com.google.common.util.concurrent.ExecutionSequencer.RunningState (com.google.common.util.concurrent.ExecutionSequencer$RunningState)
.class final enum Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;
.super Ljava/lang/Enum;
.source "ExecutionSequencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ExecutionSequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

.field public static final enum b:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

.field public static final enum c:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

.field private static final synthetic d:[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    const-string v1, "NOT_RUN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->a:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    new-instance v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    const-string v1, "CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->b:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    new-instance v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    const-string v1, "STARTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->c:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    invoke-static {}, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->e()[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->d:[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    sget-object v1, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->a:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->b:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->c:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;
    .registers 2

    const-class v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;
    .registers 1

    sget-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->d:[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    return-object v0
.end method

###### Class com.google.common.util.concurrent.ExecutionSequencer.a (com.google.common.util.concurrent.ExecutionSequencer$a)
.class final Lcom/google/common/util/concurrent/ExecutionSequencer$a;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ExecutionSequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/w;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/util/concurrent/ExecutionSequencer$a;-><init>()V

    return-void
.end method
