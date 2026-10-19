package com.squareup.imagelib;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import com.applovin.sdk.AppLovinEventTypes;
import com.squareup.imagelib.Picasso;
import com.squareup.imagelib.u;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ContactsPhotoRequestHandler.java */
/* JADX INFO: loaded from: classes4.dex */
class f extends u {
    private static final UriMatcher a;
    private final Context b;

    /* JADX INFO: compiled from: ContactsPhotoRequestHandler.java */
    @TargetApi(14)
    private static class a {
        static InputStream a(ContentResolver contentResolver, Uri uri) {
            return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
        }
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        a = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "display_photo/#", 4);
    }

    f(Context context) {
        this.b = context;
    }

    private InputStream j(s sVar) throws IOException {
        ContentResolver contentResolver = this.b.getContentResolver();
        Uri uriLookupContact = sVar.f7764e;
        int iMatch = a.match(uriLookupContact);
        if (iMatch != 1) {
            if (iMatch != 2) {
                if (iMatch != 3) {
                    if (iMatch != 4) {
                        throw new IllegalStateException("Invalid uri: " + uriLookupContact);
                    }
                }
            }
            return contentResolver.openInputStream(uriLookupContact);
        }
        uriLookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uriLookupContact);
        if (uriLookupContact == null) {
            return null;
        }
        return Build.VERSION.SDK_INT < 14 ? ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uriLookupContact) : a.a(contentResolver, uriLookupContact);
    }

    @Override // com.squareup.imagelib.u
    public boolean c(s sVar) {
        Uri uri = sVar.f7764e;
        return AppLovinEventTypes.USER_VIEWED_CONTENT.equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && a.match(sVar.f7764e) != -1;
    }

    @Override // com.squareup.imagelib.u
    public u.a f(s sVar, int i) throws IOException {
        InputStream inputStreamJ = j(sVar);
        if (inputStreamJ != null) {
            return new u.a(inputStreamJ, Picasso.LoadedFrom.DISK);
        }
        return null;
    }
}
