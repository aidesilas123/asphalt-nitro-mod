###### Class com.bytedance.sdk.component.utils.n.AnonymousClass1 (com.bytedance.sdk.component.utils.n$1)
.class Lcom/bytedance/sdk/component/utils/n$1;
.super Ljava/lang/Object;
.source "MimeDetector.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/utils/n;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/utils/n;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/utils/n;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/utils/n$1;->a:Lcom/bytedance/sdk/component/utils/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/component/utils/n$1;->a:Lcom/bytedance/sdk/component/utils/n;

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/n;->a(Lcom/bytedance/sdk/component/utils/n;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "tt_mime_type.pro"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_3c

    :try_start_16
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_39

    :cond_20
    :goto_20
    :try_start_20
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_3a

    goto :goto_20

    :cond_30
    if-eqz v2, :cond_35

    :try_start_32
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_35

    :catchall_35
    :cond_35
    :try_start_35
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_38

    :catchall_38
    return-object v1

    :catchall_39
    move-object v3, v0

    :catchall_3a
    move-object v0, v2

    goto :goto_3d

    :catchall_3c
    move-object v3, v0

    :goto_3d
    :try_start_3d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_4e

    if-eqz v0, :cond_48

    :try_start_43
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_48

    :catchall_47
    nop

    :cond_48
    :goto_48
    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4d

    :catchall_4d
    :cond_4d
    return-object v1

    :catchall_4e
    move-exception v1

    if-eqz v0, :cond_56

    :try_start_51
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_56

    :catchall_55
    nop

    :cond_56
    :goto_56
    if-eqz v3, :cond_5b

    :try_start_58
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5b

    :catchall_5b
    :cond_5b
    throw v1
.end method

.method public synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/utils/n$1;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
