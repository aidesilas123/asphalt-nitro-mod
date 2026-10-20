###### Class com.koushikdutta.quack.m (com.koushikdutta.quack.m)
.class public final synthetic Lcom/koushikdutta/quack/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/quack/QuackCoercion;


# static fields
.field public static final synthetic a:Lcom/koushikdutta/quack/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/koushikdutta/quack/m;

    invoke-direct {v0}, Lcom/koushikdutta/quack/m;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/m;->a:Lcom/koushikdutta/quack/m;

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

    check-cast p2, Ljava/lang/Long;

    invoke-static {p1, p2}, Lcom/koushikdutta/quack/QuackContext;->lambda$new$16(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
