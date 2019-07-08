#if !defined(<*>HEADER_DEFINE<*>)
#define <*>HEADER_DEFINE<*>

#include "GUIBehaviourDecorator.h"

class <*>BEHAVIOUR_CLASS_NAME<*> : public CGUIBehaviourDecorator
{
public:
    <*>BEHAVIOUR_CLASS_NAME<*>(CGUIObject* const pObject);

    <*>BEHAVIOUR_CLASS_NAME<*>();

#if defined(GUILIANI_STREAM_GUI)
    /** Reads all attributes from streaming file.
        This method is called by CGUIFactoryManager after one of the registered
        factories has created an instance of this class.
    */
    virtual void ReadFromStream();
#endif

#if defined(GUILIANI_WRITE_GUI)
    /** Writes all attributes to the streaming file. A CGUIStreamWriter
        has to be initialized first.
        @param bWriteClassID This flag is used to select if writing of behaviour
               class ID, leading and trailing tags is performed.
    */
    virtual void WriteToStream(const eC_Bool bWriteClassID = false);
#endif
};

#endif // <*>HEADER_DEFINE<*>