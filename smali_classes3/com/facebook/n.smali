###### Class com.facebook.n (com.facebook.n)
.class public final synthetic Lcom/facebook/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lcom/facebook/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/n;

    invoke-direct {v0}, Lcom/facebook/n;-><init>()V

    sput-object v0, Lcom/facebook/n;->a:Lcom/facebook/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/facebook/FacebookSdk;->h()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
