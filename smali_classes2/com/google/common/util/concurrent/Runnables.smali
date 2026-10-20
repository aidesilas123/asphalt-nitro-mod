###### Class com.google.common.util.concurrent.Runnables (com.google.common.util.concurrent.Runnables)
.class public final Lcom/google/common/util/concurrent/Runnables;
.super Ljava/lang/Object;
.source "Runnables.java"


# static fields
.field private static final a:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/Runnables$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Runnables$a;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/Runnables;->a:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doNothing()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Lcom/google/common/util/concurrent/Runnables;->a:Ljava/lang/Runnable;

    return-object v0
.end method
