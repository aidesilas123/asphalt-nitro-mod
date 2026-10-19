###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils.b (com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;
.super Ljava/lang/Object;
.source "SUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->ShowToastMessage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;->a:Ljava/lang/String;

    iput p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b$a;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils$b;)V

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
