###### Class com.facebook.CallbackManager.Factory (com.facebook.CallbackManager$Factory)
.class public final Lcom/facebook/CallbackManager$Factory;
.super Ljava/lang/Object;
.source "CallbackManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/CallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/CallbackManager$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/CallbackManager$Factory;

    invoke-direct {v0}, Lcom/facebook/CallbackManager$Factory;-><init>()V

    sput-object v0, Lcom/facebook/CallbackManager$Factory;->INSTANCE:Lcom/facebook/CallbackManager$Factory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create()Lcom/facebook/CallbackManager;
    .registers 1

    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl;

    invoke-direct {v0}, Lcom/facebook/internal/CallbackManagerImpl;-><init>()V

    return-object v0
.end method
