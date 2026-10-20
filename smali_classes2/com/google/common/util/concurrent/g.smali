###### Class com.google.common.util.concurrent.g (com.google.common.util.concurrent.g)
.class public final synthetic Lcom/google/common/util/concurrent/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/m;


# static fields
.field public static final synthetic a:Lcom/google/common/util/concurrent/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/g;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/g;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/g;->a:Lcom/google/common/util/concurrent/g;

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

    new-instance v0, Lcom/google/common/util/concurrent/Striped$j;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$j;-><init>()V

    return-object v0
.end method
