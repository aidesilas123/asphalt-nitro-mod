###### Class com.google.common.util.concurrent.e (com.google.common.util.concurrent.e)
.class public final synthetic Lcom/google/common/util/concurrent/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/m;


# static fields
.field public static final synthetic a:Lcom/google/common/util/concurrent/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/e;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/e;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/e;->a:Lcom/google/common/util/concurrent/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    return-object v0
.end method
