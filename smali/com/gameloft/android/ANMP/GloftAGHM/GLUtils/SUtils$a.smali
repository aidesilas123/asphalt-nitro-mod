###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils.a (com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a;
.super Ljava/lang/Object;
.source "SUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->showCantGoBackPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a$a;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$a;)V

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
