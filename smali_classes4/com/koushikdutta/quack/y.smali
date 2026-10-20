###### Class com.koushikdutta.quack.y (com.koushikdutta.quack.y)
.class public final synthetic Lcom/koushikdutta/quack/y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/quack/QuackCoercion;


# static fields
.field public static final synthetic a:Lcom/koushikdutta/quack/y;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/koushikdutta/quack/y;

    invoke-direct {v0}, Lcom/koushikdutta/quack/y;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/y;->a:Lcom/koushikdutta/quack/y;

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

    invoke-static {p1, p2}, Lcom/koushikdutta/quack/QuackContext;->lambda$new$3(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method
