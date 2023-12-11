import nltk
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
##nltk.download('stopwords')
##nltk.download('punkt')
print("Jay Rathod T-127")
print(stopwords.words('english'))
sample_text="Time Flies like an Arrow; Fruit Flies like a Banana"
text_tokens=word_tokenize(sample_text)
tokens_without_sw=[word for word in text_tokens if not word in stopwords.words('english')]
print('-'*15,'Sample Text','-'*15)
print('Original Text: ',text_tokens)
print('Text without stopwords: ',tokens_without_sw)
print('-'*15,'Sample Text','-'*15)
file = open(r'C:\\Users\\jayan\\Documents\\Sem 6\\IR\\Sample.txt')
line=file.read()
file_text_tokens= word_tokenize(line)
file_tokens_without_sw=[word for word in file_text_tokens if not word in stopwords.words('english')]
print('Original Text: ', file_text_tokens)
print('Text without stopwords: ', file_tokens_without_sw)
file.close()
