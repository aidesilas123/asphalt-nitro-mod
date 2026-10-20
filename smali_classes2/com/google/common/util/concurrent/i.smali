###### Class com.google.common.util.concurrent.i (com.google.common.util.concurrent.i)
.class public final synthetic Lcom/google/common/util/concurrent/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/m;


# static fields
.field public static final synthetic a:Lcom/google/common/util/concurrent/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/i;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/i;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/i;

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

    invoke-static {}, Lcom/google/common/util/concurrent/Striped;->d()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method
