###### Class com.koushikdutta.quack.v (com.koushikdutta.quack.v)
.class public final synthetic Lcom/koushikdutta/quack/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final synthetic a:Lcom/koushikdutta/quack/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/koushikdutta/quack/v;

    invoke-direct {v0}, Lcom/koushikdutta/quack/v;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/v;->a:Lcom/koushikdutta/quack/v;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/koushikdutta/quack/QuackContext;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
