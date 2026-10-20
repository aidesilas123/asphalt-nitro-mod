###### Class com.facebook.k (com.facebook.k)
.class public final synthetic Lcom/facebook/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/k;

    invoke-direct {v0}, Lcom/facebook/k;-><init>()V

    sput-object v0, Lcom/facebook/k;->a:Lcom/facebook/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->e(Z)V

    return-void
.end method
