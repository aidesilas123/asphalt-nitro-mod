###### Class com.koushikdutta.quack.o (com.koushikdutta.quack.o)
.class public final synthetic Lcom/koushikdutta/quack/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/quack/QuackCoercion;


# static fields
.field public static final synthetic a:Lcom/koushikdutta/quack/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/koushikdutta/quack/o;

    invoke-direct {v0}, Lcom/koushikdutta/quack/o;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/o;->a:Lcom/koushikdutta/quack/o;

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

    check-cast p2, Ljava/lang/Byte;

    invoke-static {p1, p2}, Lcom/koushikdutta/quack/QuackContext;->lambda$new$6(Ljava/lang/Class;Ljava/lang/Byte;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
