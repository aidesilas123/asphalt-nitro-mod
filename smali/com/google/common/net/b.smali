###### Class com.google.common.net.b (com.google.common.net.b)
.class public final synthetic Lcom/google/common/net/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/f;


# static fields
.field public static final synthetic a:Lcom/google/common/net/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/net/b;

    invoke-direct {v0}, Lcom/google/common/net/b;-><init>()V

    sput-object v0, Lcom/google/common/net/b;->a:Lcom/google/common/net/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/net/MediaType;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
