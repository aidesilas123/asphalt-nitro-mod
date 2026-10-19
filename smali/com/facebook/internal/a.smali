###### Class com.facebook.internal.a (com.facebook.internal.a)
.class public final synthetic Lcom/facebook/internal/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/facebook/CallbackManager;

.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/internal/l0;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/CallbackManager;ILkotlin/jvm/internal/l0;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/a;->a:Lcom/facebook/CallbackManager;

    iput p2, p0, Lcom/facebook/internal/a;->b:I

    iput-object p3, p0, Lcom/facebook/internal/a;->c:Lkotlin/jvm/internal/l0;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/internal/a;->a:Lcom/facebook/CallbackManager;

    iget v1, p0, Lcom/facebook/internal/a;->b:I

    iget-object v2, p0, Lcom/facebook/internal/a;->c:Lkotlin/jvm/internal/l0;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/internal/DialogPresenter;->a(Lcom/facebook/CallbackManager;ILkotlin/jvm/internal/l0;Landroid/util/Pair;)V

    return-void
.end method
