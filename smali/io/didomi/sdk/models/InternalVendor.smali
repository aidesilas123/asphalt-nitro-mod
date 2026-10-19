###### Class io.didomi.drawable.models.InternalVendor (io.didomi.sdk.models.InternalVendor)
.class public final Lio/didomi/sdk/models/InternalVendor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/H3;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/models/InternalVendor$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008,\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001|B\u0093\u0002\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r\u0012\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0017\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\u0010\u0008\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010#\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008#\u0010\"J\u0012\u0010$\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008$\u0010\"J\u0010\u0010%\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008%\u0010\"J\u0012\u0010&\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008&\u0010\'J\u0016\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u00c6\u0003\u00a2\u0006\u0004\u0008(\u0010)J\u0016\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u00c6\u0003\u00a2\u0006\u0004\u0008*\u0010)J\u0012\u0010+\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008+\u0010\"J\u0016\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rH\u00c6\u0003\u00a2\u0006\u0004\u0008,\u0010)J\u0016\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rH\u00c6\u0003\u00a2\u0006\u0004\u0008-\u0010)J\u0016\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rH\u00c6\u0003\u00a2\u0006\u0004\u0008.\u0010)J\u0016\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rH\u00c6\u0003\u00a2\u0006\u0004\u0008/\u0010)J\u0012\u00100\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003\u00a2\u0006\u0004\u00080\u00101J\u0010\u00102\u001a\u00020\u0014H\u00c6\u0003\u00a2\u0006\u0004\u00082\u00103J\u0012\u00104\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00084\u0010\"J\u0018\u00105\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0017H\u00c6\u0003\u00a2\u0006\u0004\u00085\u00106J\u0012\u00107\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003\u00a2\u0006\u0004\u00087\u00108J\u0018\u00109\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0004\u00089\u0010)J\u0012\u0010:\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008:\u0010\"J\u0012\u0010;\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008;\u0010\"J\u009c\u0002\u0010<\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r2\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r2\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r2\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00142\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0010\u0008\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00172\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0010\u0008\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\r2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008<\u0010=J\u0010\u0010>\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008>\u0010\"J\u0010\u0010@\u001a\u00020?H\u00d6\u0001\u00a2\u0006\u0004\u0008@\u0010AJ\u001a\u0010D\u001a\u00020\u00142\u0008\u0010C\u001a\u0004\u0018\u00010BH\u00d6\u0003\u00a2\u0006\u0004\u0008D\u0010ER\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010F\u001a\u0004\u0008G\u0010\"\"\u0004\u0008H\u0010IR\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010F\u001a\u0004\u0008J\u0010\"R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010F\u001a\u0004\u0008K\u0010\"R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010F\u001a\u0004\u0008L\u0010\"\"\u0004\u0008M\u0010IR$\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010N\u001a\u0004\u0008O\u0010\'\"\u0004\u0008P\u0010QR(\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010R\u001a\u0004\u0008S\u0010)\"\u0004\u0008T\u0010UR(\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010R\u001a\u0004\u0008V\u0010)\"\u0004\u0008W\u0010UR$\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010F\u001a\u0004\u0008X\u0010\"\"\u0004\u0008Y\u0010IR(\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010R\u001a\u0004\u0008Z\u0010)\"\u0004\u0008[\u0010UR \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010R\u001a\u0004\u0008\\\u0010)R \u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010R\u001a\u0004\u0008]\u0010)R(\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010R\u001a\u0004\u0008^\u0010)\"\u0004\u0008_\u0010UR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010`\u001a\u0004\u0008a\u00101R\u001a\u0010\u0015\u001a\u00020\u00148\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010b\u001a\u0004\u0008c\u00103R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010F\u001a\u0004\u0008d\u0010\"R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00178\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010e\u001a\u0004\u0008f\u00106R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010g\u001a\u0004\u0008h\u00108R\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010R\u001a\u0004\u0008i\u0010)R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010F\u001a\u0004\u0008j\u0010\"R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010F\u001a\u0004\u0008k\u0010\"R(\u0010l\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008l\u0010R\u001a\u0004\u0008m\u0010)\"\u0004\u0008n\u0010UR$\u0010p\u001a\u0004\u0018\u00010o8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010q\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010uR\"\u0010v\u001a\u00020\u00148F@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008v\u0010b\u001a\u0004\u0008v\u00103\"\u0004\u0008w\u0010xR\u0011\u0010y\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008y\u00103R\u0011\u0010{\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008z\u00103\u00a8\u0006}"
    }
    d2 = {
        "Lio/didomi/sdk/models/InternalVendor;",
        "Lio/didomi/sdk/H3;",
        "",
        "id",
        "name",
        "privacyPolicyUrl",
        "namespace",
        "Lio/didomi/sdk/Vendor$Namespaces;",
        "namespaces",
        "",
        "purposeIds",
        "legIntPurposeIds",
        "iabId",
        "",
        "flexiblePurposeIds",
        "specialPurposeIds",
        "featureIds",
        "specialFeatureIds",
        "",
        "cookieMaxAgeSeconds",
        "",
        "usesNonCookieAccess",
        "deviceStorageDisclosureUrl",
        "",
        "dataDeclaration",
        "Lio/didomi/sdk/models/InternalVendor$a;",
        "dataRetention",
        "Lio/didomi/sdk/Vendor$Url;",
        "urls",
        "didomiId",
        "deletedDate",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "component4",
        "component5",
        "()Lio/didomi/sdk/Vendor$Namespaces;",
        "component6",
        "()Ljava/util/List;",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "()Ljava/lang/Long;",
        "component14",
        "()Z",
        "component15",
        "component16",
        "()Ljava/util/Set;",
        "component17",
        "()Lio/didomi/sdk/models/InternalVendor$a;",
        "component18",
        "component19",
        "component20",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getId",
        "setId",
        "(Ljava/lang/String;)V",
        "getName",
        "getPrivacyPolicyUrl",
        "getNamespace",
        "setNamespace",
        "Lio/didomi/sdk/Vendor$Namespaces;",
        "getNamespaces",
        "setNamespaces",
        "(Lio/didomi/sdk/Vendor$Namespaces;)V",
        "Ljava/util/List;",
        "getPurposeIds",
        "setPurposeIds",
        "(Ljava/util/List;)V",
        "getLegIntPurposeIds",
        "setLegIntPurposeIds",
        "getIabId",
        "setIabId",
        "getFlexiblePurposeIds",
        "setFlexiblePurposeIds",
        "getSpecialPurposeIds",
        "getFeatureIds",
        "getSpecialFeatureIds",
        "setSpecialFeatureIds",
        "Ljava/lang/Long;",
        "getCookieMaxAgeSeconds",
        "Z",
        "getUsesNonCookieAccess",
        "getDeviceStorageDisclosureUrl",
        "Ljava/util/Set;",
        "getDataDeclaration",
        "Lio/didomi/sdk/models/InternalVendor$a;",
        "getDataRetention",
        "getUrls",
        "getDidomiId",
        "getDeletedDate",
        "essentialPurposeIds",
        "getEssentialPurposeIds",
        "setEssentialPurposeIds",
        "Lio/didomi/sdk/models/DeviceStorageDisclosures;",
        "deviceStorageDisclosures",
        "Lio/didomi/sdk/models/DeviceStorageDisclosures;",
        "getDeviceStorageDisclosures",
        "()Lio/didomi/sdk/models/DeviceStorageDisclosures;",
        "setDeviceStorageDisclosures",
        "(Lio/didomi/sdk/models/DeviceStorageDisclosures;)V",
        "isDeviceStorageDisclosureComplete",
        "setDeviceStorageDisclosureComplete",
        "(Z)V",
        "isIabVendor",
        "getHasLegIntClaim",
        "hasLegIntClaim",
        "a",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final cookieMaxAgeSeconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/r/c;
        value = "cookieMaxAgeSeconds"
    .end annotation
.end field

.field private final dataDeclaration:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/r/c;
        value = "dataDeclaration"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dataRetention:Lio/didomi/sdk/models/InternalVendor$a;
    .annotation runtime Lcom/google/gson/r/c;
        value = "dataRetention"
    .end annotation
.end field

.field private final deletedDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "deletedDate"
    .end annotation
.end field

.field private final deviceStorageDisclosureUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "deviceStorageDisclosureUrl"
    .end annotation
.end field

.field private transient deviceStorageDisclosures:Lio/didomi/sdk/models/DeviceStorageDisclosures;

.field private final didomiId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "didomiId"
    .end annotation
.end field

.field private transient essentialPurposeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final featureIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/r/c;
        alternate = {
            "features"
        }
        value = "featureIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private flexiblePurposeIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/r/c;
        alternate = {
            "flexiblePurposes"
        }
        value = "flexiblePurposeIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iabId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "iabId"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "id"
    .end annotation
.end field

.field private transient isDeviceStorageDisclosureComplete:Z

.field private legIntPurposeIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/r/c;
        alternate = {
            "legIntPurposes"
        }
        value = "legIntPurposeIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "name"
    .end annotation
.end field

.field private namespace:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "namespace"
    .end annotation
.end field

.field private namespaces:Lio/didomi/sdk/Vendor$Namespaces;
    .annotation runtime Lcom/google/gson/r/c;
        value = "namespaces"
    .end annotation
.end field

.field private final privacyPolicyUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "policyUrl"
    .end annotation
.end field

.field private purposeIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/r/c;
        alternate = {
            "purposes"
        }
        value = "purposeIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private specialFeatureIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/r/c;
        alternate = {
            "specialFeatures"
        }
        value = "specialFeatureIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final specialPurposeIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/r/c;
        alternate = {
            "specialPurposes"
        }
        value = "specialPurposeIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final urls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/r/c;
        value = "urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/Vendor$Url;",
            ">;"
        }
    .end annotation
.end field

.field private final usesNonCookieAccess:Z
    .annotation runtime Lcom/google/gson/r/c;
        value = "usesNonCookieAccess"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0xfffff

    const/16 v22, 0x0

    invoke-direct/range {v0 .. v22}, Lio/didomi/sdk/models/InternalVendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/Vendor$Namespaces;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lio/didomi/sdk/models/InternalVendor$a;",
            "Ljava/util/List<",
            "Lio/didomi/sdk/Vendor$Url;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    const-string v10, "id"

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "name"

    invoke-static {p2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "namespace"

    invoke-static {p4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "purposeIds"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "legIntPurposeIds"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "flexiblePurposeIds"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "specialPurposeIds"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "featureIds"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "specialFeatureIds"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->id:Ljava/lang/String;

    iput-object v2, v0, Lio/didomi/sdk/models/InternalVendor;->name:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->privacyPolicyUrl:Ljava/lang/String;

    iput-object v3, v0, Lio/didomi/sdk/models/InternalVendor;->namespace:Ljava/lang/String;

    move-object/from16 v1, p5

    iput-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->namespaces:Lio/didomi/sdk/Vendor$Namespaces;

    iput-object v4, v0, Lio/didomi/sdk/models/InternalVendor;->purposeIds:Ljava/util/List;

    iput-object v5, v0, Lio/didomi/sdk/models/InternalVendor;->legIntPurposeIds:Ljava/util/List;

    move-object/from16 v1, p8

    iput-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->iabId:Ljava/lang/String;

    iput-object v6, v0, Lio/didomi/sdk/models/InternalVendor;->flexiblePurposeIds:Ljava/util/List;

    iput-object v7, v0, Lio/didomi/sdk/models/InternalVendor;->specialPurposeIds:Ljava/util/List;

    iput-object v8, v0, Lio/didomi/sdk/models/InternalVendor;->featureIds:Ljava/util/List;

    iput-object v9, v0, Lio/didomi/sdk/models/InternalVendor;->specialFeatureIds:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->cookieMaxAgeSeconds:Ljava/lang/Long;

    move/from16 v1, p14

    iput-boolean v1, v0, Lio/didomi/sdk/models/InternalVendor;->usesNonCookieAccess:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->deviceStorageDisclosureUrl:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->dataDeclaration:Ljava/util/Set;

    move-object/from16 v1, p17

    iput-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->dataRetention:Lio/didomi/sdk/models/InternalVendor$a;

    move-object/from16 v1, p18

    iput-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->urls:Ljava/util/List;

    move-object/from16 v1, p19

    iput-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->didomiId:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->deletedDate:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->essentialPurposeIds:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/n;)V
    .registers 44

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_a

    move-object v1, v2

    goto :goto_c

    :cond_a
    move-object/from16 v1, p1

    :goto_c
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_12

    move-object v3, v2

    goto :goto_14

    :cond_12
    move-object/from16 v3, p2

    :goto_14
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_1a

    const/4 v4, 0x0

    goto :goto_1c

    :cond_1a
    move-object/from16 v4, p3

    :goto_1c
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_21

    goto :goto_23

    :cond_21
    move-object/from16 v2, p4

    :goto_23
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_29

    const/4 v6, 0x0

    goto :goto_2b

    :cond_29
    move-object/from16 v6, p5

    :goto_2b
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_35

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_37

    :cond_35
    move-object/from16 v7, p6

    :goto_37
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_41

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_43

    :cond_41
    move-object/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_49

    const/4 v9, 0x0

    goto :goto_4b

    :cond_49
    move-object/from16 v9, p8

    :goto_4b
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_54

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v10

    goto :goto_56

    :cond_54
    move-object/from16 v10, p9

    :goto_56
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_5f

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v11

    goto :goto_61

    :cond_5f
    move-object/from16 v11, p10

    :goto_61
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_6a

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v12

    goto :goto_6c

    :cond_6a
    move-object/from16 v12, p11

    :goto_6c
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_75

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v13

    goto :goto_77

    :cond_75
    move-object/from16 v13, p12

    :goto_77
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_7d

    const/4 v14, 0x0

    goto :goto_7f

    :cond_7d
    move-object/from16 v14, p13

    :goto_7f
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_85

    const/4 v15, 0x0

    goto :goto_87

    :cond_85
    move/from16 v15, p14

    :goto_87
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_8d

    const/4 v5, 0x0

    goto :goto_8f

    :cond_8d
    move-object/from16 v5, p15

    :goto_8f
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_99

    const/16 v16, 0x0

    goto :goto_9b

    :cond_99
    move-object/from16 v16, p16

    :goto_9b
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_a4

    const/16 v17, 0x0

    goto :goto_a6

    :cond_a4
    move-object/from16 v17, p17

    :goto_a6
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_af

    const/16 v18, 0x0

    goto :goto_b1

    :cond_af
    move-object/from16 v18, p18

    :goto_b1
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_ba

    const/16 v19, 0x0

    goto :goto_bc

    :cond_ba
    move-object/from16 v19, p19

    :goto_bc
    const/high16 v20, 0x80000

    and-int v0, v0, v20

    if-eqz v0, :cond_c4

    const/4 v0, 0x0

    goto :goto_c6

    :cond_c4
    move-object/from16 v0, p20

    :goto_c6
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v2

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move/from16 p15, v15

    move-object/from16 p16, v5

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v0

    invoke-direct/range {p1 .. p21}, Lio/didomi/sdk/models/InternalVendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/models/InternalVendor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/didomi/sdk/models/InternalVendor;
    .registers 40

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lio/didomi/sdk/models/InternalVendor;->id:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lio/didomi/sdk/models/InternalVendor;->name:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lio/didomi/sdk/models/InternalVendor;->privacyPolicyUrl:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-object v5, v0, Lio/didomi/sdk/models/InternalVendor;->namespace:Ljava/lang/String;

    goto :goto_28

    :cond_26
    move-object/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-object v6, v0, Lio/didomi/sdk/models/InternalVendor;->namespaces:Lio/didomi/sdk/Vendor$Namespaces;

    goto :goto_31

    :cond_2f
    move-object/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lio/didomi/sdk/models/InternalVendor;->purposeIds:Ljava/util/List;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-object v8, v0, Lio/didomi/sdk/models/InternalVendor;->legIntPurposeIds:Ljava/util/List;

    goto :goto_43

    :cond_41
    move-object/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget-object v9, v0, Lio/didomi/sdk/models/InternalVendor;->iabId:Ljava/lang/String;

    goto :goto_4c

    :cond_4a
    move-object/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-object v10, v0, Lio/didomi/sdk/models/InternalVendor;->flexiblePurposeIds:Ljava/util/List;

    goto :goto_55

    :cond_53
    move-object/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget-object v11, v0, Lio/didomi/sdk/models/InternalVendor;->specialPurposeIds:Ljava/util/List;

    goto :goto_5e

    :cond_5c
    move-object/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget-object v12, v0, Lio/didomi/sdk/models/InternalVendor;->featureIds:Ljava/util/List;

    goto :goto_67

    :cond_65
    move-object/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget-object v13, v0, Lio/didomi/sdk/models/InternalVendor;->specialFeatureIds:Ljava/util/List;

    goto :goto_70

    :cond_6e
    move-object/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-object v14, v0, Lio/didomi/sdk/models/InternalVendor;->cookieMaxAgeSeconds:Ljava/lang/Long;

    goto :goto_79

    :cond_77
    move-object/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-boolean v15, v0, Lio/didomi/sdk/models/InternalVendor;->usesNonCookieAccess:Z

    goto :goto_82

    :cond_80
    move/from16 v15, p14

    :goto_82
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8b

    iget-object v15, v0, Lio/didomi/sdk/models/InternalVendor;->deviceStorageDisclosureUrl:Ljava/lang/String;

    goto :goto_8d

    :cond_8b
    move-object/from16 v15, p15

    :goto_8d
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_99

    iget-object v15, v0, Lio/didomi/sdk/models/InternalVendor;->dataDeclaration:Ljava/util/Set;

    goto :goto_9b

    :cond_99
    move-object/from16 v15, p16

    :goto_9b
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_a6

    iget-object v15, v0, Lio/didomi/sdk/models/InternalVendor;->dataRetention:Lio/didomi/sdk/models/InternalVendor$a;

    goto :goto_a8

    :cond_a6
    move-object/from16 v15, p17

    :goto_a8
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_b3

    iget-object v15, v0, Lio/didomi/sdk/models/InternalVendor;->urls:Ljava/util/List;

    goto :goto_b5

    :cond_b3
    move-object/from16 v15, p18

    :goto_b5
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_c0

    iget-object v15, v0, Lio/didomi/sdk/models/InternalVendor;->didomiId:Ljava/lang/String;

    goto :goto_c2

    :cond_c0
    move-object/from16 v15, p19

    :goto_c2
    const/high16 v16, 0x80000

    and-int v1, v1, v16

    if-eqz v1, :cond_cb

    iget-object v1, v0, Lio/didomi/sdk/models/InternalVendor;->deletedDate:Ljava/lang/String;

    goto :goto_cd

    :cond_cb
    move-object/from16 v1, p20

    :goto_cd
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p19, v15

    move-object/from16 p20, v1

    invoke-virtual/range {p0 .. p20}, Lio/didomi/sdk/models/InternalVendor;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->specialPurposeIds:Ljava/util/List;

    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->featureIds:Ljava/util/List;

    return-object v0
.end method

.method public final component12()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->specialFeatureIds:Ljava/util/List;

    return-object v0
.end method

.method public final component13()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->cookieMaxAgeSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final component14()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalVendor;->usesNonCookieAccess:Z

    return v0
.end method

.method public final component15()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->deviceStorageDisclosureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->dataDeclaration:Ljava/util/Set;

    return-object v0
.end method

.method public final component17()Lio/didomi/sdk/models/InternalVendor$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->dataRetention:Lio/didomi/sdk/models/InternalVendor$a;

    return-object v0
.end method

.method public final component18()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/Vendor$Url;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->urls:Ljava/util/List;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->didomiId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->deletedDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->privacyPolicyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lio/didomi/sdk/Vendor$Namespaces;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->namespaces:Lio/didomi/sdk/Vendor$Namespaces;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->purposeIds:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->legIntPurposeIds:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->iabId:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->flexiblePurposeIds:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;
    .registers 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/Vendor$Namespaces;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lio/didomi/sdk/models/InternalVendor$a;",
            "Ljava/util/List<",
            "Lio/didomi/sdk/Vendor$Url;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/didomi/sdk/models/InternalVendor;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    const-string v0, "id"

    move-object/from16 v21, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "namespace"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purposeIds"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legIntPurposeIds"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexiblePurposeIds"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialPurposeIds"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureIds"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialFeatureIds"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v22, Lio/didomi/sdk/models/InternalVendor;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct/range {v0 .. v20}, Lio/didomi/sdk/models/InternalVendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/models/InternalVendor;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/models/InternalVendor;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->id:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->privacyPolicyUrl:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->privacyPolicyUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->namespace:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->namespaces:Lio/didomi/sdk/Vendor$Namespaces;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->namespaces:Lio/didomi/sdk/Vendor$Namespaces;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->purposeIds:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->purposeIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->legIntPurposeIds:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->legIntPurposeIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->iabId:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->iabId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->flexiblePurposeIds:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->flexiblePurposeIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->specialPurposeIds:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->specialPurposeIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->featureIds:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->featureIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    return v2

    :cond_85
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->specialFeatureIds:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->specialFeatureIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v2

    :cond_90
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->cookieMaxAgeSeconds:Ljava/lang/Long;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->cookieMaxAgeSeconds:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    return v2

    :cond_9b
    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalVendor;->usesNonCookieAccess:Z

    iget-boolean v3, p1, Lio/didomi/sdk/models/InternalVendor;->usesNonCookieAccess:Z

    if-eq v1, v3, :cond_a2

    return v2

    :cond_a2
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->deviceStorageDisclosureUrl:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->deviceStorageDisclosureUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ad

    return v2

    :cond_ad
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->dataDeclaration:Ljava/util/Set;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->dataDeclaration:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b8

    return v2

    :cond_b8
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->dataRetention:Lio/didomi/sdk/models/InternalVendor$a;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->dataRetention:Lio/didomi/sdk/models/InternalVendor$a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    return v2

    :cond_c3
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->urls:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->urls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    return v2

    :cond_ce
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->didomiId:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalVendor;->didomiId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d9

    return v2

    :cond_d9
    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->deletedDate:Ljava/lang/String;

    iget-object p1, p1, Lio/didomi/sdk/models/InternalVendor;->deletedDate:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e4

    return v2

    :cond_e4
    return v0
.end method

.method public final getCookieMaxAgeSeconds()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->cookieMaxAgeSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final getDataDeclaration()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->dataDeclaration:Ljava/util/Set;

    return-object v0
.end method

.method public final getDataRetention()Lio/didomi/sdk/models/InternalVendor$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->dataRetention:Lio/didomi/sdk/models/InternalVendor$a;

    return-object v0
.end method

.method public final getDeletedDate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->deletedDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceStorageDisclosureUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->deviceStorageDisclosureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceStorageDisclosures()Lio/didomi/sdk/models/DeviceStorageDisclosures;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->deviceStorageDisclosures:Lio/didomi/sdk/models/DeviceStorageDisclosures;

    return-object v0
.end method

.method public final getDidomiId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->didomiId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEssentialPurposeIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->essentialPurposeIds:Ljava/util/List;

    return-object v0
.end method

.method public final getFeatureIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->featureIds:Ljava/util/List;

    return-object v0
.end method

.method public final getFlexiblePurposeIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->flexiblePurposeIds:Ljava/util/List;

    return-object v0
.end method

.method public final getHasLegIntClaim()Z
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->urls:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_31

    :cond_d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/Vendor$Url;

    invoke-virtual {v3}, Lio/didomi/sdk/Vendor$Url;->getLegIntClaim()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-static {v3}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v3, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v3, 0x1

    :goto_2d
    xor-int/2addr v3, v2

    if-eqz v3, :cond_11

    const/4 v1, 0x1

    :cond_31
    :goto_31
    return v1
.end method

.method public final getIabId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->iabId:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLegIntPurposeIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->legIntPurposeIds:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getNamespaces()Lio/didomi/sdk/N3;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getNamespaces()Lio/didomi/sdk/Vendor$Namespaces;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaces()Lio/didomi/sdk/Vendor$Namespaces;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->namespaces:Lio/didomi/sdk/Vendor$Namespaces;

    return-object v0
.end method

.method public final getPrivacyPolicyUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->privacyPolicyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurposeIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->purposeIds:Ljava/util/List;

    return-object v0
.end method

.method public final getSpecialFeatureIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->specialFeatureIds:Ljava/util/List;

    return-object v0
.end method

.method public final getSpecialPurposeIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->specialPurposeIds:Ljava/util/List;

    return-object v0
.end method

.method public final getUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/Vendor$Url;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->urls:Ljava/util/List;

    return-object v0
.end method

.method public final getUsesNonCookieAccess()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalVendor;->usesNonCookieAccess:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->privacyPolicyUrl:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->namespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->namespaces:Lio/didomi/sdk/Vendor$Namespaces;

    if-nez v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_32

    :cond_2e
    invoke-virtual {v1}, Lio/didomi/sdk/Vendor$Namespaces;->hashCode()I

    move-result v1

    :goto_32
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->purposeIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->legIntPurposeIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->iabId:Ljava/lang/String;

    if-nez v1, :cond_4d

    const/4 v1, 0x0

    goto :goto_51

    :cond_4d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_51
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->flexiblePurposeIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->specialPurposeIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->featureIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->specialFeatureIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->cookieMaxAgeSeconds:Ljava/lang/Long;

    if-nez v1, :cond_7e

    const/4 v1, 0x0

    goto :goto_82

    :cond_7e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_82
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalVendor;->usesNonCookieAccess:Z

    if-eqz v1, :cond_8a

    const/4 v1, 0x1

    :cond_8a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->deviceStorageDisclosureUrl:Ljava/lang/String;

    if-nez v1, :cond_93

    const/4 v1, 0x0

    goto :goto_97

    :cond_93
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_97
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->dataDeclaration:Ljava/util/Set;

    if-nez v1, :cond_a0

    const/4 v1, 0x0

    goto :goto_a4

    :cond_a0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->dataRetention:Lio/didomi/sdk/models/InternalVendor$a;

    if-nez v1, :cond_ad

    const/4 v1, 0x0

    goto :goto_b1

    :cond_ad
    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor$a;->hashCode()I

    move-result v1

    :goto_b1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->urls:Ljava/util/List;

    if-nez v1, :cond_ba

    const/4 v1, 0x0

    goto :goto_be

    :cond_ba
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_be
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->didomiId:Ljava/lang/String;

    if-nez v1, :cond_c7

    const/4 v1, 0x0

    goto :goto_cb

    :cond_c7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_cb
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->deletedDate:Ljava/lang/String;

    if-nez v1, :cond_d3

    goto :goto_d7

    :cond_d3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d7
    add-int/2addr v0, v2

    return v0
.end method

.method public final isDeviceStorageDisclosureComplete()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->deviceStorageDisclosureUrl:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalVendor;->isDeviceStorageDisclosureComplete:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public final isIabVendor()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/models/InternalVendor;->namespace:Ljava/lang/String;

    const-string v1, "iab"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalVendor;->getNamespaces()Lio/didomi/sdk/Vendor$Namespaces;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lio/didomi/sdk/Vendor$Namespaces;->getIab2()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public final setDeviceStorageDisclosureComplete(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/models/InternalVendor;->isDeviceStorageDisclosureComplete:Z

    return-void
.end method

.method public final setDeviceStorageDisclosures(Lio/didomi/sdk/models/DeviceStorageDisclosures;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/models/InternalVendor;->deviceStorageDisclosures:Lio/didomi/sdk/models/DeviceStorageDisclosures;

    return-void
.end method

.method public final setEssentialPurposeIds(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/models/InternalVendor;->essentialPurposeIds:Ljava/util/List;

    return-void
.end method

.method public final setFlexiblePurposeIds(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/models/InternalVendor;->flexiblePurposeIds:Ljava/util/List;

    return-void
.end method

.method public final setIabId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/models/InternalVendor;->iabId:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/models/InternalVendor;->id:Ljava/lang/String;

    return-void
.end method

.method public final setLegIntPurposeIds(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/models/InternalVendor;->legIntPurposeIds:Ljava/util/List;

    return-void
.end method

.method public final setNamespace(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/models/InternalVendor;->namespace:Ljava/lang/String;

    return-void
.end method

.method public setNamespaces(Lio/didomi/sdk/Vendor$Namespaces;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/models/InternalVendor;->namespaces:Lio/didomi/sdk/Vendor$Namespaces;

    return-void
.end method

.method public final setPurposeIds(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/models/InternalVendor;->purposeIds:Ljava/util/List;

    return-void
.end method

.method public final setSpecialFeatureIds(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/models/InternalVendor;->specialFeatureIds:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalVendor(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", privacyPolicyUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->privacyPolicyUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", namespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", namespaces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->namespaces:Lio/didomi/sdk/Vendor$Namespaces;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", purposeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->purposeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", legIntPurposeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->legIntPurposeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iabId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->iabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flexiblePurposeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->flexiblePurposeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", specialPurposeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->specialPurposeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", featureIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->featureIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", specialFeatureIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->specialFeatureIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cookieMaxAgeSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->cookieMaxAgeSeconds:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", usesNonCookieAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalVendor;->usesNonCookieAccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceStorageDisclosureUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->deviceStorageDisclosureUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataDeclaration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->dataDeclaration:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataRetention="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->dataRetention:Lio/didomi/sdk/models/InternalVendor$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->urls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", didomiId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->didomiId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deletedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalVendor;->deletedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
