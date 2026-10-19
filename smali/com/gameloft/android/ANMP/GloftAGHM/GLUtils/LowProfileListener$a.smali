###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.LowProfileListener.a (com.gameloft.android.ANMP.GloftAGHM.GLUtils.LowProfileListener$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$a;
.super Ljava/lang/Object;
.source "LowProfileListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->ActivateImmersiveMode(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->access$000(Landroid/app/Activity;)V

    return-void
.end method
