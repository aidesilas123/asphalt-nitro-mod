###### Class com.koushikdutta.quack.g0 (com.koushikdutta.quack.g0)
.class public final synthetic Lcom/koushikdutta/quack/g0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/quack/QuackCoercion;


# static fields
.field public static final synthetic a:Lcom/koushikdutta/quack/g0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/koushikdutta/quack/g0;

    invoke-direct {v0}, Lcom/koushikdutta/quack/g0;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/g0;->a:Lcom/koushikdutta/quack/g0;

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

    check-cast p2, Ljava/lang/Float;

    invoke-static {p1, p2}, Lcom/koushikdutta/quack/QuackContext;->lambda$new$21(Ljava/lang/Class;Ljava/lang/Float;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
