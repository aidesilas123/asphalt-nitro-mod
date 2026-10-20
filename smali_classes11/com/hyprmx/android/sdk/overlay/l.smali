###### Class com.hyprmx.android.sdk.overlay.l (com.hyprmx.android.sdk.overlay.l)
.class public final Lcom/hyprmx/android/sdk/overlay/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/overlay/k;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleDateFormat(\"yyyyMMdd_HHmmss\").format(Date())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JPEG_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/overlay/l;->a:Ljava/lang/String;

    const-string v0, "createTempFile(\n      \"J\u2026Path = absolutePath\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Landroid/content/Context;IILandroid/content/Intent;Lcom/hyprmx/android/sdk/core/w;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Landroid/content/Intent;",
            "Lcom/hyprmx/android/sdk/core/w;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Lcom/hyprmx/android/sdk/overlay/l$a;

    if-eqz v0, :cond_13

    move-object v0, p6

    check-cast v0, Lcom/hyprmx/android/sdk/overlay/l$a;

    iget v1, v0, Lcom/hyprmx/android/sdk/overlay/l$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/overlay/l$a;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/overlay/l$a;

    invoke-direct {v0, p0, p6}, Lcom/hyprmx/android/sdk/overlay/l$a;-><init>(Lcom/hyprmx/android/sdk/overlay/l;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p6, v0, Lcom/hyprmx/android/sdk/overlay/l$a;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/overlay/l$a;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p5, v0, Lcom/hyprmx/android/sdk/overlay/l$a;->b:Lcom/hyprmx/android/sdk/core/w;

    iget-object p1, v0, Lcom/hyprmx/android/sdk/overlay/l$a;->a:Lcom/hyprmx/android/sdk/overlay/l;

    :try_start_2a
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_8e

    :catch_2e
    move-exception p1

    goto/16 :goto_9b

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eq p2, v3, :cond_41

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_41
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p6, "processActivityResult REQUEST_IMAGE_CAPTURE returned with result code "

    invoke-direct {p2, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    const/4 p2, -0x1

    if-eq p3, p2, :cond_5b

    invoke-interface {p5, v4}, Lcom/hyprmx/android/sdk/core/w;->imageCaptured(Ljava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_5b
    if-eqz p4, :cond_6a

    :try_start_5d
    invoke-virtual {p4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_64

    goto :goto_6a

    :cond_64
    invoke-virtual {p4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    goto :goto_93

    :cond_6a
    :goto_6a
    iget-object p2, p0, Lcom/hyprmx/android/sdk/overlay/l;->a:Ljava/lang/String;

    if-eqz p2, :cond_8d

    iput-object p0, v0, Lcom/hyprmx/android/sdk/overlay/l$a;->a:Lcom/hyprmx/android/sdk/overlay/l;

    iput-object p5, v0, Lcom/hyprmx/android/sdk/overlay/l$a;->b:Lcom/hyprmx/android/sdk/core/w;

    iput v3, v0, Lcom/hyprmx/android/sdk/overlay/l$a;->e:I

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object p3

    new-instance p4, Lcom/hyprmx/android/sdk/utility/z0;

    invoke-direct {p4, p1, p2, v4}, Lcom/hyprmx/android/sdk/utility/z0;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {p3, p4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_88

    goto :goto_8a

    :cond_88
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    :goto_8a
    if-ne p1, v1, :cond_8d

    return-object v1

    :cond_8d
    move-object p1, p0

    :goto_8e
    iget-object p2, p1, Lcom/hyprmx/android/sdk/overlay/l;->b:Ljava/lang/String;

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_93
    iput-object v4, p2, Lcom/hyprmx/android/sdk/overlay/l;->a:Ljava/lang/String;

    iput-object v4, p2, Lcom/hyprmx/android/sdk/overlay/l;->b:Ljava/lang/String;

    invoke-interface {p5, p1}, Lcom/hyprmx/android/sdk/core/w;->imageCaptured(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_9a} :catch_2e

    goto :goto_a3

    :goto_9b
    const-string p2, "Problem processing activity result."

    invoke-static {p2, p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p5, v4}, Lcom/hyprmx/android/sdk/core/w;->imageCaptured(Ljava/lang/String;)V

    :goto_a3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_3c

    const-string v5, "info.requestedPermissions"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v3

    const/4 v6, 0x0

    :goto_32
    if-ge v6, v5, :cond_3c

    aget-object v7, v3, v6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_3c
    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_4e

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_4e

    :cond_4c
    const/4 v0, 0x0

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v0, 0x1

    :goto_4f
    const/4 v2, 0x0

    if-nez v0, :cond_58

    const-string v0, "Unable to create camera intent"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    goto :goto_a0

    :cond_58
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_5f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/hyprmx/android/sdk/overlay/l;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_6a} :catch_9a

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hyprmx/android/sdk/overlay/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".com.hyprmx.android.hyprmxfileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hyprmx/android/sdk/overlay/l;->b:Ljava/lang/String;

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v2, v0

    goto :goto_a0

    :catch_9a
    move-exception v0

    const-string v1, "Unable to create Image File"

    invoke-static {v1, v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_b8

    new-array v1, v5, [Landroid/content/Intent;

    aput-object v2, v1, v4

    goto :goto_ba

    :cond_b8
    new-array v1, v4, [Landroid/content/Intent;

    :goto_ba
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CHOOSER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    const-string v3, "Image Chooser"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
