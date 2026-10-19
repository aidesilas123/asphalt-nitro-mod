###### Class com.facebook.appevents.internal.d (com.facebook.appevents.internal.d)
.class public final synthetic Lcom/facebook/appevents/internal/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/internal/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/internal/d;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/d;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/d;->a:Lcom/facebook/appevents/internal/d;

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

    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->d(Z)V

    return-void
.end method
