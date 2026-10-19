###### Class com.vungle.ads.internal.model.AdAsset (com.vungle.ads.internal.model.AdAsset)
.class public final Lcom/vungle/ads/internal/model/AdAsset;
.super Ljava/lang/Object;
.source "AdAsset.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/AdAsset$Status;,
        Lcom/vungle/ads/internal/model/AdAsset$FileType;,
        Lcom/vungle/ads/internal/model/AdAsset$ErrorType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0003567B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006B+\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0008J\u0013\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u00103\u001a\u00020\u001eH\u0016J\u0008\u00104\u001a\u00020\u0003H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\nR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\n\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\nR\u001a\u0010*\u001a\u00020+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00068"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/AdAsset;",
        "",
        "adIdentifier",
        "",
        "serverPath",
        "localPath",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "identifier",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAdIdentifier",
        "()Ljava/lang/String;",
        "fileSize",
        "",
        "getFileSize",
        "()J",
        "setFileSize",
        "(J)V",
        "fileType",
        "Lcom/vungle/ads/internal/model/AdAsset$FileType;",
        "getFileType",
        "()Lcom/vungle/ads/internal/model/AdAsset$FileType;",
        "setFileType",
        "(Lcom/vungle/ads/internal/model/AdAsset$FileType;)V",
        "getIdentifier",
        "getLocalPath",
        "parentId",
        "getParentId",
        "setParentId",
        "(Ljava/lang/String;)V",
        "retryCount",
        "",
        "getRetryCount",
        "()I",
        "setRetryCount",
        "(I)V",
        "retryTypeError",
        "Lcom/vungle/ads/internal/model/AdAsset$ErrorType;",
        "getRetryTypeError",
        "()Lcom/vungle/ads/internal/model/AdAsset$ErrorType;",
        "setRetryTypeError",
        "(Lcom/vungle/ads/internal/model/AdAsset$ErrorType;)V",
        "getServerPath",
        "status",
        "Lcom/vungle/ads/internal/model/AdAsset$Status;",
        "getStatus",
        "()Lcom/vungle/ads/internal/model/AdAsset$Status;",
        "setStatus",
        "(Lcom/vungle/ads/internal/model/AdAsset$Status;)V",
        "equals",
        "",
        "o",
        "hashCode",
        "toString",
        "ErrorType",
        "FileType",
        "Status",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final adIdentifier:Ljava/lang/String;

.field private fileSize:J

.field private fileType:Lcom/vungle/ads/internal/model/AdAsset$FileType;

.field private final identifier:Ljava/lang/String;

.field private final localPath:Ljava/lang/String;

.field private parentId:Ljava/lang/String;

.field private retryCount:I

.field private retryTypeError:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

.field private final serverPath:Ljava/lang/String;

.field private status:Lcom/vungle/ads/internal/model/AdAsset$Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "adIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vungle/ads/internal/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "adIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/vungle/ads/internal/model/AdAsset;->identifier:Ljava/lang/String;

    sget-object p4, Lcom/vungle/ads/internal/model/AdAsset$Status;->NEW:Lcom/vungle/ads/internal/model/AdAsset$Status;

    iput-object p4, p0, Lcom/vungle/ads/internal/model/AdAsset;->status:Lcom/vungle/ads/internal/model/AdAsset$Status;

    iput-object p1, p0, Lcom/vungle/ads/internal/model/AdAsset;->adIdentifier:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/AdAsset;->serverPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/AdAsset;->localPath:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/vungle/ads/internal/model/AdAsset;->fileSize:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/vungle/ads/internal/model/AdAsset;->retryCount:I

    sget-object p1, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;->NO_ERROR:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    iput-object p1, p0, Lcom/vungle/ads/internal/model/AdAsset;->retryTypeError:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_a8

    const-class v2, Lcom/vungle/ads/internal/model/AdAsset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_a8

    :cond_15
    check-cast p1, Lcom/vungle/ads/internal/model/AdAsset;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->status:Lcom/vungle/ads/internal/model/AdAsset$Status;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdAsset;->status:Lcom/vungle/ads/internal/model/AdAsset$Status;

    if-eq v2, v3, :cond_1e

    return v1

    :cond_1e
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->fileType:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdAsset;->fileType:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    if-eq v2, v3, :cond_25

    return v1

    :cond_25
    iget-wide v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->fileSize:J

    iget-wide v4, p1, Lcom/vungle/ads/internal/model/AdAsset;->fileSize:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2e

    return v1

    :cond_2e
    iget v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->retryCount:I

    iget v3, p1, Lcom/vungle/ads/internal/model/AdAsset;->retryCount:I

    if-eq v2, v3, :cond_35

    return v1

    :cond_35
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->retryTypeError:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdAsset;->retryTypeError:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    if-eq v2, v3, :cond_3c

    return v1

    :cond_3c
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_49

    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdAsset;->identifier:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    goto :goto_4d

    :cond_49
    iget-object v2, p1, Lcom/vungle/ads/internal/model/AdAsset;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_4f

    :goto_4d
    const/4 v2, 0x1

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    if-eqz v2, :cond_53

    return v1

    :cond_53
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->adIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_60

    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdAsset;->adIdentifier:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    goto :goto_64

    :cond_60
    iget-object v2, p1, Lcom/vungle/ads/internal/model/AdAsset;->adIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_66

    :goto_64
    const/4 v2, 0x1

    goto :goto_67

    :cond_66
    const/4 v2, 0x0

    :goto_67
    if-eqz v2, :cond_6a

    return v1

    :cond_6a
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->parentId:Ljava/lang/String;

    if-eqz v2, :cond_77

    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdAsset;->parentId:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    goto :goto_7b

    :cond_77
    iget-object v2, p1, Lcom/vungle/ads/internal/model/AdAsset;->parentId:Ljava/lang/String;

    if-eqz v2, :cond_7d

    :goto_7b
    const/4 v2, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v2, 0x0

    :goto_7e
    if-eqz v2, :cond_81

    return v1

    :cond_81
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->serverPath:Ljava/lang/String;

    if-eqz v2, :cond_8e

    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    goto :goto_92

    :cond_8e
    iget-object v2, p1, Lcom/vungle/ads/internal/model/AdAsset;->serverPath:Ljava/lang/String;

    if-eqz v2, :cond_94

    :goto_92
    const/4 v2, 0x1

    goto :goto_95

    :cond_94
    const/4 v2, 0x0

    :goto_95
    if-eqz v2, :cond_98

    return v1

    :cond_98
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->localPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/AdAsset;->localPath:Ljava/lang/String;

    if-eqz v2, :cond_a3

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a7

    :cond_a3
    if-nez p1, :cond_a6

    goto :goto_a7

    :cond_a6
    const/4 v0, 0x0

    :goto_a7
    return v0

    :cond_a8
    :goto_a8
    return v1
.end method

.method public final getAdIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdAsset;->adIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileSize()J
    .registers 3

    iget-wide v0, p0, Lcom/vungle/ads/internal/model/AdAsset;->fileSize:J

    return-wide v0
.end method

.method public final getFileType()Lcom/vungle/ads/internal/model/AdAsset$FileType;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdAsset;->fileType:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdAsset;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdAsset;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdAsset;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRetryCount()I
    .registers 2

    iget v0, p0, Lcom/vungle/ads/internal/model/AdAsset;->retryCount:I

    return v0
.end method

.method public final getRetryTypeError()Lcom/vungle/ads/internal/model/AdAsset$ErrorType;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdAsset;->retryTypeError:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    return-object v0
.end method

.method public final getServerPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdAsset;->serverPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/vungle/ads/internal/model/AdAsset$Status;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdAsset;->status:Lcom/vungle/ads/internal/model/AdAsset$Status;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdAsset;->identifier:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->adIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->parentId:Ljava/lang/String;

    if-eqz v2, :cond_25

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->serverPath:Ljava/lang/String;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->localPath:Ljava/lang/String;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->status:Lcom/vungle/ads/internal/model/AdAsset$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdAsset;->fileType:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    if-eqz v2, :cond_54

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_54
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/vungle/ads/internal/model/AdAsset;->fileSize:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vungle/ads/internal/model/AdAsset;->retryCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdAsset;->retryTypeError:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setFileSize(J)V
    .registers 3

    iput-wide p1, p0, Lcom/vungle/ads/internal/model/AdAsset;->fileSize:J

    return-void
.end method

.method public final setFileType(Lcom/vungle/ads/internal/model/AdAsset$FileType;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/AdAsset;->fileType:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/model/AdAsset;->parentId:Ljava/lang/String;

    return-void
.end method

.method public final setRetryCount(I)V
    .registers 2

    iput p1, p0, Lcom/vungle/ads/internal/model/AdAsset;->retryCount:I

    return-void
.end method

.method public final setRetryTypeError(Lcom/vungle/ads/internal/model/AdAsset$ErrorType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/AdAsset;->retryTypeError:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    return-void
.end method

.method public final setStatus(Lcom/vungle/ads/internal/model/AdAsset$Status;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/AdAsset;->status:Lcom/vungle/ads/internal/model/AdAsset$Status;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdAsset{identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdAsset;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adIdentifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdAsset;->adIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', serverPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', localPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdAsset;->status:Lcom/vungle/ads/internal/model/AdAsset$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdAsset;->fileType:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/ads/internal/model/AdAsset;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/AdAsset;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryTypeError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdAsset;->retryTypeError:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.AdAsset.ErrorType (com.vungle.ads.internal.model.AdAsset$ErrorType)
.class public final enum Lcom/vungle/ads/internal/model/AdAsset$ErrorType;
.super Ljava/lang/Enum;
.source "AdAsset.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/AdAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/internal/model/AdAsset$ErrorType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/AdAsset$ErrorType;",
        "",
        "(Ljava/lang/String;I)V",
        "NO_ERROR",
        "CAN_RETRY_ERROR",
        "CANNOT_RETRY_ERROR",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

.field public static final enum CANNOT_RETRY_ERROR:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

.field public static final enum CAN_RETRY_ERROR:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

.field public static final enum NO_ERROR:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/internal/model/AdAsset$ErrorType;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    sget-object v1, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;->NO_ERROR:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;->CAN_RETRY_ERROR:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;->CANNOT_RETRY_ERROR:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;->NO_ERROR:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    new-instance v0, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    const-string v1, "CAN_RETRY_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;->CAN_RETRY_ERROR:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    new-instance v0, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    const-string v1, "CANNOT_RETRY_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;->CANNOT_RETRY_ERROR:Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    invoke-static {}, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;->$values()[Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;->$VALUES:[Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/model/AdAsset$ErrorType;
    .registers 2

    const-class v0, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/model/AdAsset$ErrorType;
    .registers 1

    sget-object v0, Lcom/vungle/ads/internal/model/AdAsset$ErrorType;->$VALUES:[Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/internal/model/AdAsset$ErrorType;

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.AdAsset.FileType (com.vungle.ads.internal.model.AdAsset$FileType)
.class public final enum Lcom/vungle/ads/internal/model/AdAsset$FileType;
.super Ljava/lang/Enum;
.source "AdAsset.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/AdAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/internal/model/AdAsset$FileType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/AdAsset$FileType;",
        "",
        "(Ljava/lang/String;I)V",
        "ZIP",
        "ZIP_ASSET",
        "ASSET",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/ads/internal/model/AdAsset$FileType;

.field public static final enum ASSET:Lcom/vungle/ads/internal/model/AdAsset$FileType;

.field public static final enum ZIP:Lcom/vungle/ads/internal/model/AdAsset$FileType;

.field public static final enum ZIP_ASSET:Lcom/vungle/ads/internal/model/AdAsset$FileType;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/internal/model/AdAsset$FileType;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vungle/ads/internal/model/AdAsset$FileType;

    sget-object v1, Lcom/vungle/ads/internal/model/AdAsset$FileType;->ZIP:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/AdAsset$FileType;->ZIP_ASSET:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/AdAsset$FileType;->ASSET:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/vungle/ads/internal/model/AdAsset$FileType;

    const-string v1, "ZIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/model/AdAsset$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$FileType;->ZIP:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    new-instance v0, Lcom/vungle/ads/internal/model/AdAsset$FileType;

    const-string v1, "ZIP_ASSET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/model/AdAsset$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$FileType;->ZIP_ASSET:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    new-instance v0, Lcom/vungle/ads/internal/model/AdAsset$FileType;

    const-string v1, "ASSET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/model/AdAsset$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$FileType;->ASSET:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    invoke-static {}, Lcom/vungle/ads/internal/model/AdAsset$FileType;->$values()[Lcom/vungle/ads/internal/model/AdAsset$FileType;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$FileType;->$VALUES:[Lcom/vungle/ads/internal/model/AdAsset$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/model/AdAsset$FileType;
    .registers 2

    const-class v0, Lcom/vungle/ads/internal/model/AdAsset$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/model/AdAsset$FileType;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/model/AdAsset$FileType;
    .registers 1

    sget-object v0, Lcom/vungle/ads/internal/model/AdAsset$FileType;->$VALUES:[Lcom/vungle/ads/internal/model/AdAsset$FileType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/internal/model/AdAsset$FileType;

    return-object v0
.end method

###### Class com.vungle.ads.internal.model.AdAsset.Status (com.vungle.ads.internal.model.AdAsset$Status)
.class public final enum Lcom/vungle/ads/internal/model/AdAsset$Status;
.super Ljava/lang/Enum;
.source "AdAsset.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/AdAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/internal/model/AdAsset$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vungle/ads/internal/model/AdAsset$Status;",
        "",
        "(Ljava/lang/String;I)V",
        "NEW",
        "DOWNLOAD_RUNNING",
        "DOWNLOAD_FAILED",
        "DOWNLOAD_SUCCESS",
        "PROCESSED",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/ads/internal/model/AdAsset$Status;

.field public static final enum DOWNLOAD_FAILED:Lcom/vungle/ads/internal/model/AdAsset$Status;

.field public static final enum DOWNLOAD_RUNNING:Lcom/vungle/ads/internal/model/AdAsset$Status;

.field public static final enum DOWNLOAD_SUCCESS:Lcom/vungle/ads/internal/model/AdAsset$Status;

.field public static final enum NEW:Lcom/vungle/ads/internal/model/AdAsset$Status;

.field public static final enum PROCESSED:Lcom/vungle/ads/internal/model/AdAsset$Status;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/internal/model/AdAsset$Status;
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vungle/ads/internal/model/AdAsset$Status;

    sget-object v1, Lcom/vungle/ads/internal/model/AdAsset$Status;->NEW:Lcom/vungle/ads/internal/model/AdAsset$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/AdAsset$Status;->DOWNLOAD_RUNNING:Lcom/vungle/ads/internal/model/AdAsset$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/AdAsset$Status;->DOWNLOAD_FAILED:Lcom/vungle/ads/internal/model/AdAsset$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/AdAsset$Status;->DOWNLOAD_SUCCESS:Lcom/vungle/ads/internal/model/AdAsset$Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/AdAsset$Status;->PROCESSED:Lcom/vungle/ads/internal/model/AdAsset$Status;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/vungle/ads/internal/model/AdAsset$Status;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/model/AdAsset$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$Status;->NEW:Lcom/vungle/ads/internal/model/AdAsset$Status;

    new-instance v0, Lcom/vungle/ads/internal/model/AdAsset$Status;

    const-string v1, "DOWNLOAD_RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/model/AdAsset$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$Status;->DOWNLOAD_RUNNING:Lcom/vungle/ads/internal/model/AdAsset$Status;

    new-instance v0, Lcom/vungle/ads/internal/model/AdAsset$Status;

    const-string v1, "DOWNLOAD_FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/model/AdAsset$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$Status;->DOWNLOAD_FAILED:Lcom/vungle/ads/internal/model/AdAsset$Status;

    new-instance v0, Lcom/vungle/ads/internal/model/AdAsset$Status;

    const-string v1, "DOWNLOAD_SUCCESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/model/AdAsset$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$Status;->DOWNLOAD_SUCCESS:Lcom/vungle/ads/internal/model/AdAsset$Status;

    new-instance v0, Lcom/vungle/ads/internal/model/AdAsset$Status;

    const-string v1, "PROCESSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/model/AdAsset$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$Status;->PROCESSED:Lcom/vungle/ads/internal/model/AdAsset$Status;

    invoke-static {}, Lcom/vungle/ads/internal/model/AdAsset$Status;->$values()[Lcom/vungle/ads/internal/model/AdAsset$Status;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/model/AdAsset$Status;->$VALUES:[Lcom/vungle/ads/internal/model/AdAsset$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/model/AdAsset$Status;
    .registers 2

    const-class v0, Lcom/vungle/ads/internal/model/AdAsset$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/model/AdAsset$Status;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/model/AdAsset$Status;
    .registers 1

    sget-object v0, Lcom/vungle/ads/internal/model/AdAsset$Status;->$VALUES:[Lcom/vungle/ads/internal/model/AdAsset$Status;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/internal/model/AdAsset$Status;

    return-object v0
.end method
