###### Class com.facebook.appevents.internal.c (com.facebook.appevents.internal.c)
.class public final synthetic Lcom/facebook/appevents/internal/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/internal/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/internal/c;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/c;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/c;->a:Lcom/facebook/appevents/internal/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->c()V

    return-void
.end method
