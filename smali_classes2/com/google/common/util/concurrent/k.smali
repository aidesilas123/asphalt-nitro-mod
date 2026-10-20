###### Class com.google.common.util.concurrent.k (com.google.common.util.concurrent.k)
.class public final synthetic Lcom/google/common/util/concurrent/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/m;


# static fields
.field public static final synthetic a:Lcom/google/common/util/concurrent/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/k;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/k;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/k;

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

    new-instance v0, Lcom/google/common/util/concurrent/Striped$d;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$d;-><init>()V

    return-object v0
.end method
