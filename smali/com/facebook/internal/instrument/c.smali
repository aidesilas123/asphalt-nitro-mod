###### Class com.facebook.internal.instrument.c (com.facebook.internal.instrument.c)
.class public final synthetic Lcom/facebook/internal/instrument/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/instrument/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/internal/instrument/c;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/c;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/c;->a:Lcom/facebook/internal/instrument/c;

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

    invoke-static {p1}, Lcom/facebook/internal/instrument/InstrumentManager;->b(Z)V

    return-void
.end method
