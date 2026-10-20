###### Class com.facebook.login.widget.b (com.facebook.login.widget.b)
.class public final synthetic Lcom/facebook/login/widget/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# static fields
.field public static final synthetic a:Lcom/facebook/login/widget/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/login/widget/b;

    invoke-direct {v0}, Lcom/facebook/login/widget/b;-><init>()V

    sput-object v0, Lcom/facebook/login/widget/b;->a:Lcom/facebook/login/widget/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/facebook/CallbackManager$ActivityResultParameters;

    invoke-static {p1}, Lcom/facebook/login/widget/LoginButton;->c(Lcom/facebook/CallbackManager$ActivityResultParameters;)V

    return-void
.end method
