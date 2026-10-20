###### Class com.koushikdutta.quack.w (com.koushikdutta.quack.w)
.class public final synthetic Lcom/koushikdutta/quack/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/quack/QuackCoercion;


# static fields
.field public static final synthetic a:Lcom/koushikdutta/quack/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/koushikdutta/quack/w;

    invoke-direct {v0}, Lcom/koushikdutta/quack/w;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/w;->a:Lcom/koushikdutta/quack/w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final coerce(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/lang/Short;

    invoke-static {p1, p2}, Lcom/koushikdutta/quack/QuackContext;->lambda$new$11(Ljava/lang/Class;Ljava/lang/Short;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
